import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal63
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal71
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal77
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal83
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal87
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal94
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal103
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal108
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal115

/-!
# Bounded kernel replay of case-13 terminal shard 01
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard01ValidPossible6 :
    ∀ id ∈ case13TerminalShard01Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard01Possible6 =
        {63, 71, 77, 83, 87, 94, 103, 108, 115} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal63ValidPossible6
  · exact case13Terminal71ValidPossible6
  · exact case13Terminal77ValidPossible6
  · exact case13Terminal83ValidPossible6
  · exact case13Terminal87ValidPossible6
  · exact case13Terminal94ValidPossible6
  · exact case13Terminal103ValidPossible6
  · exact case13Terminal108ValidPossible6
  · exact case13Terminal115ValidPossible6

end MQGN6Audit
