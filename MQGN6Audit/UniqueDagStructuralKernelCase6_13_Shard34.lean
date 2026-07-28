import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal479
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal480
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal482
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal483
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal484
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal485

/-!
# Bounded kernel replay of case-13 terminal shard 34
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard34ValidPossible6 :
    ∀ id ∈ case13TerminalShard34Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard34Possible6 =
        {479, 480, 482, 483, 484, 485} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal479ValidPossible6
  · exact case13Terminal480ValidPossible6
  · exact case13Terminal482ValidPossible6
  · exact case13Terminal483ValidPossible6
  · exact case13Terminal484ValidPossible6
  · exact case13Terminal485ValidPossible6

end MQGN6Audit
