import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Base

/-!
# Alternative-matching exclusions for case-13 terminal 346
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem case13Terminal346UniquePossible6 :
    ∀ n : Fin 15, n ≠ 12 →
      346 ∉ matchingReachStructural6 (uniqueDagCase6 13) 104 n := by
  intro n hne
  fin_cases n
  all_goals first
    | exact (hne rfl).elim
    | decide +kernel

end MQGN6Audit
