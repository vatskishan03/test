import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal347
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal348
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal349
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal355
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal356
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal357
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal359
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal360
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal362

/-!
# Bounded kernel replay of case-13 terminal shard 20
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard20ValidPossible6 :
    ∀ id ∈ case13TerminalShard20Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard20Possible6 =
        {347, 348, 349, 355, 356, 357, 359, 360, 362} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal347ValidPossible6
  · exact case13Terminal348ValidPossible6
  · exact case13Terminal349ValidPossible6
  · exact case13Terminal355ValidPossible6
  · exact case13Terminal356ValidPossible6
  · exact case13Terminal357ValidPossible6
  · exact case13Terminal359ValidPossible6
  · exact case13Terminal360ValidPossible6
  · exact case13Terminal362ValidPossible6

end MQGN6Audit
