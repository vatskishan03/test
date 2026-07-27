import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Bounded kernel replay of case-13 terminal shard 00
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13TerminalShard00ValidPossible6 :
    ∀ id ∈ case13TerminalShard00Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  decide +kernel

end MQGN6Audit
