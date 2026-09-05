"""Small cache-configuration regressions; no compiler or external dependency."""
import copy
from pathlib import Path
import tempfile
import unittest
from prepare_vm_cache import check_declared_pins
from seed_build_cache import compatible

SHA = "a" * 40
CONFIG = {"require": [{"name": "dependency", "git": "https://example.invalid/repo", "rev": SHA}]}
MANIFEST = {"packages": [{"name": "dependency", "type": "git", "url": "https://example.invalid/repo", "rev": SHA}]}


class CacheConfigTests(unittest.TestCase):
    def test_exact_declared_pin(self):
        check_declared_pins(CONFIG, MANIFEST)

    def test_wrong_revision_url_missing_or_duplicate(self):
        for field, value in (("rev", "b" * 40), ("url", "https://example.invalid/other"), ("type", "path")):
            manifest = copy.deepcopy(MANIFEST)
            manifest["packages"][0][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                check_declared_pins(CONFIG, manifest)
        for packages in ([], MANIFEST["packages"] * 2):
            with self.subTest(packages=packages), self.assertRaises(ValueError):
                check_declared_pins(CONFIG, {"packages": packages})

    def test_floating_revision_not_accepted_as_pin(self):
        configuration = copy.deepcopy(CONFIG)
        configuration["require"][0]["rev"] = "main"
        with self.assertRaisesRegex(ValueError, "commit SHA"):
            check_declared_pins(configuration, MANIFEST)

    def test_compatible_modules_and_rejected_toolchain(self):
        with tempfile.TemporaryDirectory() as directory:
            left, right = Path(directory, "left"), Path(directory, "right")
            for repository in (left, right):
                repository.mkdir()
                (repository / "lean-toolchain").write_text("leanprover/lean4:v4.27.0\n")
                (repository / "lakefile.toml").write_text('name="test"\n[[lean_lib]]\nname="Library"\n')
            self.assertEqual(compatible(left, right), {"Library"})
            (right / "lakefile.toml").write_text('name="other"\n[[lean_lib]]\nname="Library"\nmoreLeanArgs=["--foo"]\n')
            self.assertEqual(compatible(left, right), set())
            (right / "lean-toolchain").write_text("leanprover/lean4:other\n")
            with self.assertRaisesRegex(ValueError, "toolchain"):
                compatible(left, right)


if __name__ == "__main__":
    unittest.main(verbosity=2)
