import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal263
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal264
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal266
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal271
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal272
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal273

/-!
# Bounded kernel replay of case-13 terminal shard 04
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard04ValidPossible6 :
    ∀ id ∈ case13TerminalShard04Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard04Possible6 =
        {263, 264, 266, 271, 272, 273} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal263ValidPossible6
  · exact case13Terminal264ValidPossible6
  · exact case13Terminal266ValidPossible6
  · exact case13Terminal271ValidPossible6
  · exact case13Terminal272ValidPossible6
  · exact case13Terminal273ValidPossible6

end MQGN6Audit
