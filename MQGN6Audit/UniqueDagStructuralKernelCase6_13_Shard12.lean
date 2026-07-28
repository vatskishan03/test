import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal313
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal318
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal321
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal322
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal323
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal325
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal327
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal328
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal329
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Terminal336

/-!
# Bounded kernel replay of case-13 terminal shard 12
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
theorem case13TerminalShard12ValidPossible6 :
    ∀ id ∈ case13TerminalShard12Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  have hshard :
      case13TerminalShard12Possible6 =
        {313, 318, 321, 322, 323, 325, 327, 328, 329, 336} := by
    decide +kernel
  rw [hshard] at hid
  simp only [Finset.mem_insert, Finset.mem_singleton] at hid
  rcases hid with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case13Terminal313ValidPossible6
  · exact case13Terminal318ValidPossible6
  · exact case13Terminal321ValidPossible6
  · exact case13Terminal322ValidPossible6
  · exact case13Terminal323ValidPossible6
  · exact case13Terminal325ValidPossible6
  · exact case13Terminal327ValidPossible6
  · exact case13Terminal328ValidPossible6
  · exact case13Terminal329ValidPossible6
  · exact case13Terminal336ValidPossible6

end MQGN6Audit
