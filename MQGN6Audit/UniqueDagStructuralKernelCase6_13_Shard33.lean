import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal465
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal470
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal471
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal473
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal474
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal475

/-!
# Bounded kernel replay of case-13 terminal shard 33
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard33ValidPossible6 :
    ∀ id ∈ case13TerminalShard33Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard33Possible6 =
        {465, 470, 471, 473, 474, 475} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal465ValidPossible6
  · exact case13Terminal470ValidPossible6
  · exact case13Terminal471ValidPossible6
  · exact case13Terminal473ValidPossible6
  · exact case13Terminal474ValidPossible6
  · exact case13Terminal475ValidPossible6

end MQGN6Audit
