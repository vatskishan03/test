import MQGN6Audit.UniqueDagStructuralKernelCase6_0
import MQGN6Audit.UniqueDagStructuralKernelCase6_1
import MQGN6Audit.UniqueDagStructuralKernelCase6_2
import MQGN6Audit.UniqueDagStructuralKernelCase6_3
import MQGN6Audit.UniqueDagStructuralKernelCase6_4
import MQGN6Audit.UniqueDagStructuralKernelCase6_5
import MQGN6Audit.UniqueDagStructuralKernelCase6_6
import MQGN6Audit.UniqueDagStructuralKernelCase6_7
import MQGN6Audit.UniqueDagStructuralKernelCase6_8
import MQGN6Audit.UniqueDagStructuralKernelCase6_9
import MQGN6Audit.UniqueDagStructuralKernelCase6_10
import MQGN6Audit.UniqueDagStructuralKernelCase6_11
import MQGN6Audit.UniqueDagStructuralKernelCase6_12
import MQGN6Audit.UniqueDagStructuralKernelCase6_13

/-!
# Exact structural replay of all fourteen frozen raw-DAG cases
-/

namespace MQGN6Audit

theorem rawDagCasesValidFast6 :
    ∀ ci : Fin 14, RawDagCaseValidFast6 ci := by
  intro ci
  fin_cases ci
  · exact rawDagCaseValidFast6_case0_structural
  · exact rawDagCaseValidFast6_case1_structural
  · exact rawDagCaseValidFast6_case2_structural
  · exact rawDagCaseValidFast6_case3_structural
  · exact rawDagCaseValidFast6_case4_structural
  · exact rawDagCaseValidFast6_case5_structural
  · exact rawDagCaseValidFast6_case6_structuralPossible
  · exact rawDagCaseValidFast6_case7_structural
  · exact rawDagCaseValidFast6_case8_structural
  · exact rawDagCaseValidFast6_case9_structural
  · exact rawDagCaseValidFast6_case10_structural
  · exact rawDagCaseValidFast6_case11_structural
  · exact rawDagCaseValidFast6_case12_structural
  · exact rawDagCaseValidFast6_case13_structural

end MQGN6Audit
