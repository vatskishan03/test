import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal416
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal417
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal419
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal421
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal422
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal423
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal427
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal428

/-!
# Bounded kernel replay of case-13 terminal shard 30
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard30ValidPossible6 :
    ∀ id ∈ case13TerminalShard30Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard30Possible6 =
        {416, 417, 419, 421, 422, 423, 427, 428} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal416ValidPossible6
  · exact case13Terminal417ValidPossible6
  · exact case13Terminal419ValidPossible6
  · exact case13Terminal421ValidPossible6
  · exact case13Terminal422ValidPossible6
  · exact case13Terminal423ValidPossible6
  · exact case13Terminal427ValidPossible6
  · exact case13Terminal428ValidPossible6

end MQGN6Audit
