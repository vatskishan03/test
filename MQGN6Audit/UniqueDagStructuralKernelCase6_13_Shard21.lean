import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal363
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal364
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal365
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal373
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal374
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal375
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal377
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal378
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal380
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal381
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal382

/-!
# Bounded kernel replay of case-13 terminal shard 21
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard21ValidPossible6 :
    ∀ id ∈ case13TerminalShard21Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard21Possible6 =
        {363, 364, 365, 373, 374, 375, 377, 378, 380, 381, 382} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal363ValidPossible6
  · exact case13Terminal364ValidPossible6
  · exact case13Terminal365ValidPossible6
  · exact case13Terminal373ValidPossible6
  · exact case13Terminal374ValidPossible6
  · exact case13Terminal375ValidPossible6
  · exact case13Terminal377ValidPossible6
  · exact case13Terminal378ValidPossible6
  · exact case13Terminal380ValidPossible6
  · exact case13Terminal381ValidPossible6
  · exact case13Terminal382ValidPossible6

end MQGN6Audit
