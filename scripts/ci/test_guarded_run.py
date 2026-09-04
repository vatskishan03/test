"""Bounded dummy-process tests: no Lean, no large memory allocation."""
import importlib.util
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location("guarded_run", Path(__file__).with_name("guarded_run.py"))
guard = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = guard
spec.loader.exec_module(guard)


class PolicyTests(unittest.TestCase):
    def test_rejects_unsafe_overrides(self):
        for key, value in [("LAKE_WORKERS", "8"), ("LEAN_RSS_LIMIT_KB", "8000001"),
                           ("LEAN_ELAPSED_LIMIT_SECONDS", "300"), ("MEM_AVAILABLE_FLOOR_KB", "0"),
                           ("LEAN_AGGREGATE_RSS_LIMIT_KB", "55000000"),
                           ("DISK_AVAILABLE_FLOOR_KB", "0"), ("LAKE_WORKERS", "bad")]:
            with self.subTest(key=key), patch.dict(os.environ, {key: value}, clear=True):
                with self.assertRaises(ValueError):
                    guard.Limits.environment()

    def test_all_limits_and_boundary(self):
        limits = guard.Limits(workers=2, rss_kb=100, aggregate_kb=150,
                              available_kb=10, elapsed_s=5, disk_kb=10)
        proc = lambda rss=50, elapsed=1: guard.Process(1, 0, "lean", rss, elapsed, "S")
        self.assertIsNone(guard.violation([proc(), proc()], limits, 10, [10]))
        for ps, mem, disk, expected in [([proc()] * 3, 10, [10], "count"),
                ([proc(101)], 10, [10], "single"), ([proc(80)] * 2, 10, [10], "aggregate"),
                ([proc(elapsed=5)], 10, [10], "elapsed"), ([], 9, [10], "MemAvailable"),
                ([], 10, [9], "disk")]:
            self.assertIn(expected, guard.violation(ps, limits, mem, disk))

    def test_descendants_across_sessions(self):
        ps = {pid: guard.Process(pid, parent, "python3", 1, 0, "S")
              for pid, parent in [(1, 0), (2, 1), (3, 2), (4, 9)]}
        self.assertEqual(set(guard.descendants(ps, 1)), {2, 3})


@unittest.skipUnless(sys.platform == "linux", "VM-only process tests")
class ProcessTests(unittest.TestCase):
    def run_guard(self, code, directory, **overrides):
        return subprocess.Popen([sys.executable, str(Path(guard.__file__)), directory,
                                 directory + "/guard.log", "--", sys.executable, "-c", code],
                                env=dict(os.environ, **overrides), stdout=subprocess.DEVNULL,
                                stderr=subprocess.PIPE)

    def test_immediate_exit_always_monitored(self):
        with tempfile.TemporaryDirectory() as directory:
            for _ in range(5):
                process = self.run_guard("pass", directory)
                _, error = process.communicate(timeout=10)
                self.assertEqual(process.returncode, 0, error)
            log = Path(directory, "guard.log").read_text()
            self.assertEqual(log.count("monitor="), 5)
            self.assertEqual(log.count("build_status=0"), 5)

    def test_failure_exit_preserved(self):
        with tempfile.TemporaryDirectory() as directory:
            process = self.run_guard("raise SystemExit(23)", directory)
            process.communicate(timeout=10)
            self.assertEqual(process.returncode, 23)

    def test_cancellation_reaps_detached_grandchild(self):
        with tempfile.TemporaryDirectory() as directory:
            code = ("import os,time,subprocess,sys; "
                    "p=subprocess.Popen([sys.executable,'-c','import time; time.sleep(60)'],start_new_session=True); "
                    f"open({directory + '/pids'!r},'w').write(str(os.getpid())+' '+str(p.pid)); time.sleep(60)")
            process = self.run_guard(code, directory)
            try:
                deadline = time.monotonic() + 5
                while not Path(directory, "pids").exists() and time.monotonic() < deadline:
                    time.sleep(0.02)
                pids = [int(p) for p in Path(directory, "pids").read_text().split()]
                process.send_signal(signal.SIGTERM)
                process.communicate(timeout=12)
                self.assertEqual(process.returncode, 130)
                self.assertTrue(all(not Path(f"/proc/{pid}").exists() for pid in pids))
            finally:
                if process.poll() is None:
                    process.terminate()
                    process.communicate(timeout=12)

    def test_fake_lean_wall_limit(self):
        with tempfile.TemporaryDirectory() as directory:
            code = "import ctypes,time; ctypes.CDLL(None).prctl(15,b'lean',0,0,0); time.sleep(20)"
            process = self.run_guard(code, directory, LEAN_ELAPSED_LIMIT_SECONDS="1")
            process.communicate(timeout=10)
            self.assertEqual(process.returncode, 137)
            self.assertIn("elapsed time exceeded", Path(directory, "guard.log").read_text())

    def test_fake_lean_rss_limit(self):
        with tempfile.TemporaryDirectory() as directory:
            code = "import ctypes,time; ctypes.CDLL(None).prctl(15,b'lean',0,0,0); time.sleep(20)"
            process = self.run_guard(code, directory, LEAN_RSS_LIMIT_KB="1000")
            process.communicate(timeout=10)
            self.assertEqual(process.returncode, 137)
            self.assertIn("single compiler RSS exceeded", Path(directory, "guard.log").read_text())

    def test_native_reporter_is_also_bounded(self):
        with tempfile.TemporaryDirectory() as directory:
            code = "import ctypes,time; ctypes.CDLL(None).prctl(15,b'axiom_report',0,0,0); time.sleep(20)"
            process = self.run_guard(code, directory, LEAN_ELAPSED_LIMIT_SECONDS="1")
            process.communicate(timeout=10)
            self.assertEqual(process.returncode, 137)
            self.assertIn("elapsed time exceeded", Path(directory, "guard.log").read_text())

    def test_disk_preflight_does_not_start_child(self):
        with tempfile.TemporaryDirectory() as directory:
            marker = Path(directory, "child-ran")
            process = self.run_guard(f"open({str(marker)!r},'w').close()", directory,
                                     DISK_AVAILABLE_FLOOR_KB="1000000000000")
            _, error = process.communicate(timeout=10)
            self.assertEqual(process.returncode, 75)
            self.assertIn(b"preflight", error)
            self.assertFalse(marker.exists())


if __name__ == "__main__":
    unittest.main(verbosity=2)
