import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right.TargetEq

/-! Collected 1213/874 Right reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized Right reduction. -/
def terminalA1213_874RightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalA1213_874BasisRow8 tropicalTerminalRelation1213_8 terminalA1213_874RightReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA1213_874RightReductionUse8
    source_eq := terminalA1213_874RightReduction_source_eq
    target_eq := terminalA1213_874RightReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
