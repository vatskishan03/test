import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal383
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal388
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal389
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal390
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal392
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal394
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal395
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal396
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal401

/-!
# Bounded kernel replay of case-13 terminal shard 22
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard22ValidPossible6 :
    ∀ id ∈ case13TerminalShard22Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard22Possible6 =
        {383, 388, 389, 390, 392, 394, 395, 396, 401} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal383ValidPossible6
  · exact case13Terminal388ValidPossible6
  · exact case13Terminal389ValidPossible6
  · exact case13Terminal390ValidPossible6
  · exact case13Terminal392ValidPossible6
  · exact case13Terminal394ValidPossible6
  · exact case13Terminal395ValidPossible6
  · exact case13Terminal396ValidPossible6
  · exact case13Terminal401ValidPossible6

end MQGN6Audit
