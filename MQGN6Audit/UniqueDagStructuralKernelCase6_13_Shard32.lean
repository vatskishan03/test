import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal448
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal455
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal456
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal458
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal459
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal460
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal461

/-!
# Bounded kernel replay of case-13 terminal shard 32
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard32ValidPossible6 :
    ∀ id ∈ case13TerminalShard32Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard32Possible6 =
        {448, 455, 456, 458, 459, 460, 461} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal448ValidPossible6
  · exact case13Terminal455ValidPossible6
  · exact case13Terminal456ValidPossible6
  · exact case13Terminal458ValidPossible6
  · exact case13Terminal459ValidPossible6
  · exact case13Terminal460ValidPossible6
  · exact case13Terminal461ValidPossible6

end MQGN6Audit
