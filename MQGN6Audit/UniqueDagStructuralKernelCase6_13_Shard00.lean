import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal0
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal3
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal6
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal10
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal14
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal18
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal33
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal43
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal54

/-!
# Bounded kernel replay of case-13 terminal shard 00
-/

namespace MQGN6Audit

theorem case13TerminalShard00ValidPossible6 :
    ∀ id ∈ case13TerminalShard00Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  simp [case13TerminalShard00Possible6, case13TerminalShard0Possible6] at hid
  rcases hid with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal0ValidPossible6
  · exact case13Terminal3ValidPossible6
  · exact case13Terminal6ValidPossible6
  · exact case13Terminal10ValidPossible6
  · exact case13Terminal14ValidPossible6
  · exact case13Terminal18ValidPossible6
  · exact case13Terminal33ValidPossible6
  · exact case13Terminal43ValidPossible6
  · exact case13Terminal54ValidPossible6

end MQGN6Audit
