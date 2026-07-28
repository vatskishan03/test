import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal275
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal276
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal278
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal279
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal280
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal281
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal285
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal286
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal287
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal289

/-!
# Bounded kernel replay of case-13 terminal shard 10
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard10ValidPossible6 :
    ∀ id ∈ case13TerminalShard10Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard10Possible6 =
        {275, 276, 278, 279, 280, 281, 285, 286, 287, 289} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal275ValidPossible6
  · exact case13Terminal276ValidPossible6
  · exact case13Terminal278ValidPossible6
  · exact case13Terminal279ValidPossible6
  · exact case13Terminal280ValidPossible6
  · exact case13Terminal281ValidPossible6
  · exact case13Terminal285ValidPossible6
  · exact case13Terminal286ValidPossible6
  · exact case13Terminal287ValidPossible6
  · exact case13Terminal289ValidPossible6

end MQGN6Audit
