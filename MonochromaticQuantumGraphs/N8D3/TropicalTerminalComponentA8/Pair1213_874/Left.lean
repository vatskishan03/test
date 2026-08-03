import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Left.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Left.TargetEq

/-! Collected 1213/874 Left reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized Left reduction. -/
def terminalA1213_874LeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 terminalA1213_874LeftReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA1213_874LeftReductionUse8
    source_eq := terminalA1213_874LeftReduction_source_eq
    target_eq := terminalA1213_874LeftReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
