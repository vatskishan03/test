import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal429
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal431
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal432
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal434
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal435
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal436
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal437
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal447

/-!
# Bounded kernel replay of case-13 terminal shard 31
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard31ValidPossible6 :
    ∀ id ∈ case13TerminalShard31Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard31Possible6 =
        {429, 431, 432, 434, 435, 436, 437, 447} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal429ValidPossible6
  · exact case13Terminal431ValidPossible6
  · exact case13Terminal432ValidPossible6
  · exact case13Terminal434ValidPossible6
  · exact case13Terminal435ValidPossible6
  · exact case13Terminal436ValidPossible6
  · exact case13Terminal437ValidPossible6
  · exact case13Terminal447ValidPossible6

end MQGN6Audit
