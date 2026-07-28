import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal337
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal338
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal340
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal342
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal343
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal344
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal346

/-!
# Bounded kernel replay of case-13 terminal shard 13
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard13ValidPossible6 :
    ∀ id ∈ case13TerminalShard13Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard13Possible6 =
        {337, 338, 340, 342, 343, 344, 346} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal337ValidPossible6
  · exact case13Terminal338ValidPossible6
  · exact case13Terminal340ValidPossible6
  · exact case13Terminal342ValidPossible6
  · exact case13Terminal343ValidPossible6
  · exact case13Terminal344ValidPossible6
  · exact case13Terminal346ValidPossible6

end MQGN6Audit
