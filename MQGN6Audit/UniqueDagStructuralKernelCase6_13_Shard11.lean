import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal290
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal292
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal293
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal294
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal295
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal299
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal307
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal308
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal310
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal311
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal312

/-!
# Bounded kernel replay of case-13 terminal shard 11
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard11ValidPossible6 :
    ∀ id ∈ case13TerminalShard11Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard11Possible6 =
        {290, 292, 293, 294, 295, 299, 307, 308, 310, 311, 312} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal290ValidPossible6
  · exact case13Terminal292ValidPossible6
  · exact case13Terminal293ValidPossible6
  · exact case13Terminal294ValidPossible6
  · exact case13Terminal295ValidPossible6
  · exact case13Terminal299ValidPossible6
  · exact case13Terminal307ValidPossible6
  · exact case13Terminal308ValidPossible6
  · exact case13Terminal310ValidPossible6
  · exact case13Terminal311ValidPossible6
  · exact case13Terminal312ValidPossible6

end MQGN6Audit
