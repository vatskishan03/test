import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal402
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal403
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal405
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal406
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal408
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal409
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal410
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal411
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal415

/-!
# Bounded kernel replay of case-13 terminal shard 23
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard23ValidPossible6 :
    ∀ id ∈ case13TerminalShard23Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard23Possible6 =
        {402, 403, 405, 406, 408, 409, 410, 411, 415} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal402ValidPossible6
  · exact case13Terminal403ValidPossible6
  · exact case13Terminal405ValidPossible6
  · exact case13Terminal406ValidPossible6
  · exact case13Terminal408ValidPossible6
  · exact case13Terminal409ValidPossible6
  · exact case13Terminal410ValidPossible6
  · exact case13Terminal411ValidPossible6
  · exact case13Terminal415ValidPossible6

end MQGN6Audit
