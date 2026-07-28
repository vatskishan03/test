import MQGN6Audit.UniqueDagMixedTerminalKernel6

/-!
# Exact structural replay of frozen raw-DAG case 12
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 10000000 in
theorem rawDagCase12StructuralValidPossible6 :
    RawDagCaseStructuralValidPossible6 12 := by
  decide +kernel

theorem rawDagCaseValidFast6_case12_structural :
    RawDagCaseValidFast6 12 :=
  rawDagCaseValid_of_structuralPossible6 12
    rawDagCase12StructuralValidPossible6

end MQGN6Audit
