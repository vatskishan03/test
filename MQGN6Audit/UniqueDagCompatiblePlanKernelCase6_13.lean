import MQGN6Audit.UniqueDagCompatiblePlanKernelBase6

namespace MQGN6Audit

set_option maxRecDepth 100000 in
set_option maxHeartbeats 10000000 in
theorem compatiblePlanCodeTuple_memFast6_ci13 :
    ∀ v p0 p1 p2 p3,
      LocalPlanCompatible6 (feasibleTargetRep6 13) v
          (kernelLocalPlanTupleFast6 p0 p1 p2 p3) →
        encodeLocalPlanFast6 (kernelLocalPlanTupleFast6 p0 p1 p2 p3) ∈
          (uniqueDagCase6 13).planCodes v := by
  intro v p0
  fin_cases v <;> fin_cases p0 <;>
    simp only [LocalPlanCompatible6] <;> decide +kernel

end MQGN6Audit
