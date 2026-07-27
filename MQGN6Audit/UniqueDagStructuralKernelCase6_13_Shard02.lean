import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal121
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal144
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal153
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal169
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal181
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal199
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal208
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal221

/-!
# Bounded kernel replay of case-13 terminal shard 02
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard02ValidPossible6 :
    ∀ id ∈ case13TerminalShard02Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard02Possible6 =
        {121, 144, 153, 169, 181, 199, 208, 221} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal121ValidPossible6
  · exact case13Terminal144ValidPossible6
  · exact case13Terminal153ValidPossible6
  · exact case13Terminal169ValidPossible6
  · exact case13Terminal181ValidPossible6
  · exact case13Terminal199ValidPossible6
  · exact case13Terminal208ValidPossible6
  · exact case13Terminal221ValidPossible6

end MQGN6Audit
