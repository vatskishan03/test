import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal225
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal237
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal242
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal245
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal250
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal262

/-!
# Bounded kernel replay of case-13 terminal shard 03
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard03ValidPossible6 :
    ∀ id ∈ case13TerminalShard03Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard03Possible6 =
        {225, 237, 242, 245, 250, 262} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal225ValidPossible6
  · exact case13Terminal237ValidPossible6
  · exact case13Terminal242ValidPossible6
  · exact case13Terminal245ValidPossible6
  · exact case13Terminal250ValidPossible6
  · exact case13Terminal262ValidPossible6

end MQGN6Audit
