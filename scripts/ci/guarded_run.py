#!/usr/bin/env python3
"""Linux VM supervisor; operational protection, not mathematical evidence.

Monitor the child PID (not a racing setsid group). Subreap detached descendants.
Poll every 100 ms; leave margin below 8 GB and 5 minutes. Fail closed on errors.
"""
import argparse
import ctypes
from dataclasses import dataclass
import fcntl
import json
import os
from pathlib import Path
import shutil
import signal
import subprocess
import sys
import time


@dataclass(frozen=True)
class Limits:
    workers: int = 1
    rss_kb: int = 7_500_000
    aggregate_kb: int = 46_000_000
    available_kb: int = 8_000_000
    elapsed_s: int = 295
    disk_kb: int = 1_000_000
    report_rss_kb: int = 7_500_000

    @classmethod
    def environment(cls):
        names = ["LAKE_WORKERS", "LEAN_RSS_LIMIT_KB", "LEAN_AGGREGATE_RSS_LIMIT_KB",
                 "MEM_AVAILABLE_FLOOR_KB", "LEAN_ELAPSED_LIMIT_SECONDS", "DISK_AVAILABLE_FLOOR_KB",
                 "AXIOM_REPORT_RSS_LIMIT_KB"]
        defaults = cls()
        result = cls(*(int(os.environ.get(name, getattr(defaults, field)))
                       for name, field in zip(names, cls.__dataclass_fields__)))
        if not (1 <= result.workers <= 7 and 0 < result.rss_kb <= 7_800_000
                and 0 < result.aggregate_kb <= 46_000_000
                and result.available_kb >= 8_000_000
                and 0 < result.elapsed_s <= 299 and result.disk_kb >= 1_000_000
                and 0 < result.report_rss_kb <= 15_600_000):
            raise ValueError("limits violate the 7-worker, 8 GB compiler / 16 GB read-only report, 5-minute policy")
        return result


@dataclass(frozen=True)
class Process:
    pid: int
    ppid: int
    name: str
    rss: int
    elapsed: float
    state: str


def processes():
    uptime = float(Path("/proc/uptime").read_text().split()[0])
    ticks = os.sysconf("SC_CLK_TCK")
    page_kb = os.sysconf("SC_PAGE_SIZE") // 1024
    result = {}
    for path in Path("/proc").iterdir():
        if not path.name.isdigit():
            continue
        try:
            prefix, _, suffix = (path / "stat").read_text().rpartition(")")
            fields = suffix.split()
            pid = int(path.name)
            result[pid] = Process(pid, int(fields[1]), prefix.split("(", 1)[1],
                                  int(fields[21]) * page_kb, uptime - int(fields[19]) / ticks, fields[0])
        except (FileNotFoundError, ProcessLookupError):
            pass  # Exited between listing and reading.
    return result


def descendants(table, parent):
    family = {parent}
    while True:
        more = {p.pid for p in table.values() if p.ppid in family}
        if more <= family:
            return {pid: table[pid] for pid in family - {parent} if pid in table}
        family.update(more)


def mem_available():
    for line in Path("/proc/meminfo").read_text().splitlines():
        if line.startswith("MemAvailable:"):
            return int(line.split()[1])
    raise RuntimeError("MemAvailable is unavailable")


def violation(compilers, limits, available, disk_free):
    if len(compilers) > limits.workers:
        return "compiler count exceeded"
    if any(p.rss > limits.rss_kb for p in compilers if p.name != "axiom_report"):
        return "single compiler RSS exceeded"
    if any(p.rss > limits.report_rss_kb for p in compilers if p.name == "axiom_report"):
        return "read-only axiom reporter RSS exceeded"
    if sum(p.rss for p in compilers) > limits.aggregate_kb:
        return "aggregate compiler RSS exceeded"
    if any(p.elapsed >= limits.elapsed_s for p in compilers):
        return "compiler elapsed time exceeded"
    if available < limits.available_kb:
        return "MemAvailable below reserve"
    if min(disk_free) < limits.disk_kb:
        return "disk available space below reserve"
    return None


def terminate(child, report):
    """Kill and reap the owned tree, including detached/adopted descendants."""
    deadline = time.monotonic() + 5
    while True:
        live = [p for p in descendants(processes(), os.getpid()).values() if p.state != "Z"]
        sig = signal.SIGTERM if time.monotonic() < deadline else signal.SIGKILL
        for p in live:
            try:
                os.kill(p.pid, sig)
            except ProcessLookupError:
                pass
        child.poll()
        if not live:
            break
        if time.monotonic() > deadline + 5:
            raise RuntimeError("descendants remain after SIGKILL; manual intervention required")
        time.sleep(0.1)
    child.wait()
    while True:
        try:
            if os.waitpid(-1, os.WNOHANG)[0] == 0:
                break
        except ChildProcessError:
            break
    report("all owned descendants terminated")


def supervise(command, repository, log_path, limits):
    if sys.platform != "linux":
        raise RuntimeError("run on the Linux VM, not the laptop")
    libc = ctypes.CDLL(None, use_errno=True)
    if libc.prctl(36, 1, 0, 0, 0) != 0:  # PR_SET_CHILD_SUBREAPER
        raise OSError(ctypes.get_errno(), "cannot enable child subreaper")
    lock_path = Path("/tmp") / f"mqg-lean-supervisor-{os.getuid()}.lock"
    with lock_path.open("a") as lock, log_path.open("a", buffering=1) as log:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)

        def report(message):
            line = f"[supervisor] {message}"
            print(line, flush=True)
            print(line, file=log, flush=True)

        watched = [repository, log_path.parent, Path(os.environ.get("TMPDIR", "/tmp")), Path("/")]
        disks = lambda: [shutil.disk_usage(path).free // 1024 for path in watched]
        monitored = ("lean", "axiom_report")
        existing = [p for p in processes().values() if p.name in (*monitored, "lake") and p.state != "Z"]
        if existing:
            raise RuntimeError(f"another Lean/Lake process exists: {[p.pid for p in existing]}")
        problem = violation([], limits, mem_available(), disks())
        if problem:
            raise RuntimeError(f"preflight: {problem}")
        cancelled = []
        saved = {sig: signal.signal(sig, lambda sig, frame: cancelled.append(sig))
                 for sig in (signal.SIGINT, signal.SIGTERM, signal.SIGHUP)}
        report(f"command={json.dumps(command)} limits={json.dumps(limits.__dict__)}")
        child = None
        samples = 0
        peaks = {"compilers": 0, "single_rss_kb": 0, "aggregate_rss_kb": 0, "elapsed_s": 0}
        status = 1
        observed_compilers = set()
        try:
            child = subprocess.Popen(command, cwd=repository,
                                     env=dict(os.environ, LEAN_NUM_THREADS=str(limits.workers)),
                                     stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
            while True:  # Sample even when the child exits immediately.
                table = processes()
                owned = descendants(table, os.getpid())
                compilers = [p for p in owned.values() if p.name in monitored and p.state != "Z"]
                for compiler in compilers:
                    if compiler.pid not in observed_compilers:
                        observed_compilers.add(compiler.pid)
                        try:
                            argv = Path(f"/proc/{compiler.pid}/cmdline").read_bytes().decode().split("\0")
                            report(f"compiler_started pid={compiler.pid} sources={json.dumps([a for a in argv if a.endswith('.lean')])}")
                        except (FileNotFoundError, ProcessLookupError):
                            pass
                foreign = [p for p in table.values() if p.name in (*monitored, "lake")
                           and p.pid not in owned and p.state != "Z"]
                available, disk = mem_available(), disks()
                current = {"compilers": len(compilers),
                           "single_rss_kb": max((p.rss for p in compilers), default=0),
                           "aggregate_rss_kb": sum(p.rss for p in compilers),
                           "elapsed_s": max((p.elapsed for p in compilers), default=0)}
                peaks = {key: max(peaks[key], value) for key, value in current.items()}
                if samples % 300 == 0:
                    report(f"monitor={json.dumps(current)} available_kb={available} disk_free_kb={disk}")
                samples += 1
                problem = violation(compilers, limits, available, disk)
                if cancelled or problem or foreign:
                    report(f"ABORT: {problem or ('signal ' + str(cancelled) if cancelled else 'foreign compiler detected')}")
                    status = 130 if cancelled else 137
                    break
                if child.poll() is not None:
                    status = child.returncode
                    if any(p.state != "Z" for p in descendants(processes(), os.getpid()).values()):
                        report("ABORT: child exited leaving live descendants")
                        status = 137
                    break
                time.sleep(0.1)
        finally:
            try:
                if child is not None:
                    terminate(child, report)
            finally:
                for sig, handler in saved.items():
                    signal.signal(sig, handler)
                report(f"build_status={status} samples={samples} peaks={json.dumps(peaks)}")
        return status


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("repository", type=Path)
    parser.add_argument("log_file", type=Path)
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    command = args.command[1:] if args.command[:1] == ["--"] else args.command
    if not command:
        parser.error("a command is required after --")
    try:
        limits = Limits.environment()
        args.log_file.parent.mkdir(parents=True, exist_ok=True)
        return supervise(command, args.repository.resolve(), args.log_file.resolve(), limits)
    except (OSError, ValueError, RuntimeError) as error:
        print(f"[supervisor] ERROR: {error}", file=sys.stderr)
        return 75


if __name__ == "__main__":
    sys.exit(main())
