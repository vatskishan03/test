#!/usr/bin/env bash
set -euo pipefail
if (( $# < 2 )); then
  echo "usage: $0 REPOSITORY LOG_FILE [TARGET ...]" >&2
  exit 64
fi
repository=$1
log_file=$2
shift 2
elan_bin_dir=${ELAN_BIN_DIR:-"$HOME/.elan/bin"}
export PATH="$elan_bin_dir:$PATH"
exec python3 "$(dirname "$0")/guarded_run.py" "$repository" "$log_file" -- \
  "${LAKE_BIN:-$elan_bin_dir/lake}" build "$@"
