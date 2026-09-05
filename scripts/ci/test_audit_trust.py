"""Regression tests for the supplementary source lint and fail-closed log gate."""
import unittest
import audit_trust as A


class TrustAuditTests(unittest.TestCase):
    def test_invocation_list_covers_exact_endpoint_set(self):
        names = [name for group in A.AUDIT_GROUPS.values() for name in group]
        self.assertEqual(len(names), len(A.EXPECTED))
        self.assertEqual(set(names), A.EXPECTED)

    def test_nested_comments_are_not_tactics(self):
        A.check_source('/-- Colors admit witnesses. /- sorry -/ -/\n-- axiom\ntheorem t : True := by trivial', 'example')

    def test_strings_do_not_start_comments(self):
        source = 'def s := "\\\" /- sorry"\ndef r := r##"/- native_decide"##\ntheorem t : True := by sorry'
        with self.assertRaisesRegex(ValueError, r'example:3: sorry'):
            A.check_source(source, 'example')

    def test_quoted_names_cannot_hide_tactics(self):
        for source in ('theorem t : True := by «sorry»', 'private axiom t : False',
                       'private unsafe def t := 1', 'theorem t : True := by native_decide'):
            with self.subTest(source=source), self.assertRaisesRegex(ValueError, 'forbidden proof token'):
                A.check_source(source, 'example')

    def test_unterminated_literals_fail_closed(self):
        for source in ('/-', '"', 'r##"', '«'):
            with self.subTest(source=source), self.assertRaises(ValueError):
                A.check_source(source, 'example')

    def test_heartbeat_comments_and_limits(self):
        A.check_source('/- set_option maxHeartbeats 0 -/\nset_option maxHeartbeats 1000', 'example')
        for value in (0, 10_000_001):
            with self.subTest(value=value), self.assertRaisesRegex(ValueError, 'heartbeat'):
                A.check_source(f'set_option maxHeartbeats {value}', 'example')

    def complete_log(self):
        return '\n'.join(f"'{name}' depends on axioms: [propext, Classical.choice, Quot.sound]" for name in A.EXPECTED)

    def test_all_named_endpoints_required(self):
        A.check_axioms(self.complete_log())
        with self.assertRaisesRegex(ValueError, 'missing axiom output'):
            A.check_axioms(self.complete_log().split('\n', 1)[1])

    def test_extra_axiom_rejected(self):
        with self.assertRaisesRegex(ValueError, 'unexpected axioms'):
            A.check_axioms(self.complete_log().replace('Quot.sound', 'sorryAx', 1))

    def test_candidate_endpoints_cannot_be_omitted(self):
        without_candidate = '\n'.join(line for line in self.complete_log().splitlines()
                                      if '.Candidate129.' not in line)
        with self.assertRaisesRegex(ValueError, 'Candidate129'):
            A.check_axioms(without_candidate)


if __name__ == '__main__':
    unittest.main(verbosity=2)
