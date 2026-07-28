import MQGN6Audit.UniqueDagMixedTerminalKernel6

/-!
# Kernel replay of frozen raw-DAG case 6
-/

namespace MQGN6Audit

set_option maxRecDepth 100000 in
set_option maxHeartbeats 10000000 in
theorem rawDagCaseStructuralValidPossible6_case6 :
    RawDagCaseStructuralValidPossible6 6 := by
  decide +kernel

theorem rawDagCaseValidFast6_case6_structuralPossible :
    RawDagCaseValidFast6 6 :=
  rawDagCaseValid_of_structuralPossible6 6
    rawDagCaseStructuralValidPossible6_case6

end MQGN6Audit
