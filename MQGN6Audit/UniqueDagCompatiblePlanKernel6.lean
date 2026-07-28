import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_0
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_1
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_2
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_3
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_4
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_5
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_6
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_7
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_8
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_9
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_10
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_11
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_12
import MQGN6Audit.UniqueDagCompatiblePlanKernelCase6_13

namespace MQGN6Audit

theorem compatiblePlanCodeTuple_memFast6_kernel :
    ∀ ci : Fin 14, ∀ v p0 p1 p2 p3,
      LocalPlanCompatible6 (feasibleTargetRep6 ci) v
          (kernelLocalPlanTupleFast6 p0 p1 p2 p3) →
        encodeLocalPlanFast6 (kernelLocalPlanTupleFast6 p0 p1 p2 p3) ∈
          (uniqueDagCase6 ci).planCodes v := by
  intro ci
  fin_cases ci
  · exact compatiblePlanCodeTuple_memFast6_ci00
  · exact compatiblePlanCodeTuple_memFast6_ci01
  · exact compatiblePlanCodeTuple_memFast6_ci02
  · exact compatiblePlanCodeTuple_memFast6_ci03
  · exact compatiblePlanCodeTuple_memFast6_ci04
  · exact compatiblePlanCodeTuple_memFast6_ci05
  · exact compatiblePlanCodeTuple_memFast6_ci06
  · exact compatiblePlanCodeTuple_memFast6_ci07
  · exact compatiblePlanCodeTuple_memFast6_ci08
  · exact compatiblePlanCodeTuple_memFast6_ci09
  · exact compatiblePlanCodeTuple_memFast6_ci10
  · exact compatiblePlanCodeTuple_memFast6_ci11
  · exact compatiblePlanCodeTuple_memFast6_ci12
  · exact compatiblePlanCodeTuple_memFast6_ci13

/-- Every mathematically compatible local plan has exactly one of the plan
codes stored in the corresponding DAG level. -/
theorem compatiblePlanCode_memFast6 :
    ∀ ci : Fin 14, ∀ v : Fin 6, ∀ p : Fin 4 → Fin 6,
      LocalPlanCompatible6 (feasibleTargetRep6 ci) v p →
        encodeLocalPlanFast6 p ∈ (uniqueDagCase6 ci).planCodes v := by
  intro ci v p hp
  rw [kernelLocalPlan_eq_tupleFast6 p] at hp ⊢
  exact compatiblePlanCodeTuple_memFast6_kernel ci v
    (p 0) (p 1) (p 2) (p 3) hp

end MQGN6Audit
