#!/usr/bin/env bash

set -uo pipefail

if (( $# < 3 )); then
  echo "usage: $0 REPOSITORY LOG_FILE TARGET [TARGET ...]" >&2
  exit 64
fi

repository=$1
log_file=$2
shift 2
targets=("$@")

lake_workers=${LAKE_WORKERS:-1}
elan_bin_dir=${ELAN_BIN_DIR:-"$HOME/.elan/bin"}
lake_bin=${LAKE_BIN:-"$elan_bin_dir/lake"}
rss_limit_kb=${LEAN_RSS_LIMIT_KB:-7800000}
aggregate_rss_limit_kb=${LEAN_AGGREGATE_RSS_LIMIT_KB:-7800000}
available_floor_kb=${MEM_AVAILABLE_FLOOR_KB:-8000000}
elapsed_limit_seconds=${LEAN_ELAPSED_LIMIT_SECONDS:-299}

for value in "$lake_workers" "$rss_limit_kb" "$aggregate_rss_limit_kb" \
    "$available_floor_kb" "$elapsed_limit_seconds"; do
  if [[ ! "$value" =~ ^[0-9]+$ ]]; then
    echo "[supervisor] resource limits must be nonnegative integers" >&2
    exit 64
  fi
done

if (( lake_workers != 1 )); then
  echo "[supervisor] LAKE_WORKERS must be exactly 1" >&2
  exit 64
fi
if (( rss_limit_kb > 7800000 )); then
  echo "[supervisor] LEAN_RSS_LIMIT_KB must not exceed 7800000" >&2
  exit 64
fi
if (( aggregate_rss_limit_kb > 7800000 )); then
  echo "[supervisor] LEAN_AGGREGATE_RSS_LIMIT_KB must not exceed 7800000" >&2
  exit 64
fi
if (( available_floor_kb < 8000000 )); then
  echo "[supervisor] MEM_AVAILABLE_FLOOR_KB must be at least 8000000" >&2
  exit 64
fi
if (( elapsed_limit_seconds > 299 )); then
  echo "[supervisor] LEAN_ELAPSED_LIMIT_SECONDS must not exceed 299" >&2
  exit 64
fi

if [[ ! -x "$lake_bin" ]]; then
  echo "[supervisor] Lake executable is missing or not executable: $lake_bin" >&2
  exit 69
fi

if pgrep -x lean >/dev/null || pgrep -x lake >/dev/null; then
  echo "[supervisor] refusing to start while another Lean/Lake process exists" >&2
  pgrep -a -x lean >&2 || true
  pgrep -a -x lake >&2 || true
  exit 75
fi

mkdir -p "$(dirname "$log_file")"
cd "$repository" || exit 66

initial_mem_available_kb=$(awk '/^MemAvailable:/ { print $2 }' /proc/meminfo)
if [[ ! "$initial_mem_available_kb" =~ ^[0-9]+$ ]] ||
    (( initial_mem_available_kb < available_floor_kb )); then
  echo "[supervisor] refusing to start: MemAvailable ${initial_mem_available_kb:-unknown} KB is below ${available_floor_kb} KB" >&2
  exit 75
fi

printf '[supervisor] targets=%s lake_bin=%s lake_workers=%s rss_limit_kb=%s aggregate_rss_limit_kb=%s mem_available_floor_kb=%s elapsed_limit_seconds=%s\n' \
  "${targets[*]}" \
  "$lake_bin" \
  "$lake_workers" \
  "$rss_limit_kb" \
  "$aggregate_rss_limit_kb" \
  "$available_floor_kb" \
  "$elapsed_limit_seconds" | tee "$log_file"

setsid bash -c \
  'export PATH="$1:$PATH"; exec /usr/bin/time -v env LEAN_NUM_THREADS="$2" "$3" build "${@:4}"' \
  _ "$elan_bin_dir" "$lake_workers" "$lake_bin" "${targets[@]}" >>"$log_file" 2>&1 &
build_group=$!

terminate_group() {
  if kill -0 -- "-$build_group" 2>/dev/null; then
    kill -TERM -- "-$build_group" 2>/dev/null || true
    for _ in 1 2 3 4 5; do
      kill -0 -- "-$build_group" 2>/dev/null || return 0
      sleep 1
    done
    kill -KILL -- "-$build_group" 2>/dev/null || true
  fi
}

cancel_build() {
  printf '[supervisor] interrupted; terminating compiler process group %s\n' \
    "$build_group" | tee -a "$log_file" >&2
  terminate_group
  wait "$build_group" 2>/dev/null || true
  exit 130
}

trap cancel_build INT TERM HUP

max_compiler_count=0
max_single_rss_kb=0
max_aggregate_rss_kb=0
max_elapsed_seconds=0
last_report_seconds=0

while kill -0 -- "-$build_group" 2>/dev/null; do
  read -r compiler_count aggregate_rss_kb current_max_rss_kb current_max_elapsed <<EOF
$(ps -e -o pgid=,comm=,etimes=,rss= | awk -v pgid="$build_group" '
  $1 == pgid && $2 == "lean" {
    count += 1
    aggregate += $4
    if ($4 > max_rss) max_rss = $4
    if ($3 > max_elapsed) max_elapsed = $3
  }
  END { print count + 0, aggregate + 0, max_rss + 0, max_elapsed + 0 }
')
EOF
  mem_available_kb=$(awk '/^MemAvailable:/ { print $2 }' /proc/meminfo)

  (( compiler_count > max_compiler_count )) &&
    max_compiler_count=$compiler_count
  (( current_max_rss_kb > max_single_rss_kb )) &&
    max_single_rss_kb=$current_max_rss_kb
  (( aggregate_rss_kb > max_aggregate_rss_kb )) &&
    max_aggregate_rss_kb=$aggregate_rss_kb
  (( current_max_elapsed > max_elapsed_seconds )) &&
    max_elapsed_seconds=$current_max_elapsed

  now_seconds=$(date +%s)
  if (( now_seconds - last_report_seconds >= 30 )); then
    printf '[monitor] compiler_count=%s aggregate_rss_kb=%s current_max_rss_kb=%s current_max_elapsed_seconds=%s mem_available_kb=%s\n' \
      "$compiler_count" \
      "$aggregate_rss_kb" \
      "$current_max_rss_kb" \
      "$current_max_elapsed" \
      "$mem_available_kb" | tee -a "$log_file"
    last_report_seconds=$now_seconds
  fi

  violation=
  (( compiler_count > lake_workers )) &&
    violation="compiler count ${compiler_count} exceeded ${lake_workers}"
  (( current_max_rss_kb > rss_limit_kb )) &&
    violation="single compiler RSS ${current_max_rss_kb} KB exceeded ${rss_limit_kb} KB"
  (( aggregate_rss_kb > aggregate_rss_limit_kb )) &&
    violation="aggregate compiler RSS ${aggregate_rss_kb} KB exceeded ${aggregate_rss_limit_kb} KB"
  (( current_max_elapsed > elapsed_limit_seconds )) &&
    violation="compiler elapsed time ${current_max_elapsed}s exceeded ${elapsed_limit_seconds}s"
  (( mem_available_kb < available_floor_kb )) &&
    violation="MemAvailable ${mem_available_kb} KB fell below ${available_floor_kb} KB"

  if [[ -n "$violation" ]]; then
    printf '[supervisor] ABORT: %s\n' "$violation" |
      tee -a "$log_file" >&2
    terminate_group
    wait "$build_group" 2>/dev/null || true
    printf '[supervisor] terminated all spawned compiler processes\n' |
      tee -a "$log_file" >&2
    exit 137
  fi

  sleep 2
done

wait "$build_group"
build_status=$?
trap - INT TERM HUP

printf '[supervisor] build_status=%s max_compiler_count=%s max_single_rss_kb=%s max_aggregate_rss_kb=%s max_elapsed_seconds=%s\n' \
  "$build_status" \
  "$max_compiler_count" \
  "$max_single_rss_kb" \
  "$max_aggregate_rss_kb" \
  "$max_elapsed_seconds" | tee -a "$log_file"

exit "$build_status"
