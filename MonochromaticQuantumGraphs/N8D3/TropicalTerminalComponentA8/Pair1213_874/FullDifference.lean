import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.FullDifference.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.FullDifference.TargetEq

/-! Collected 1213/874 FullDifference reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized FullDifference reduction. -/
def terminalA1213_874FullDifferenceReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 17)
      terminalA1213_874BasisRow8 terminalA1213_874FullDifferenceSource8 terminalA1213_874FullDifferenceReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA1213_874FullDifferenceReductionUse8
    source_eq := terminalA1213_874FullDifferenceReduction_source_eq
    target_eq := terminalA1213_874FullDifferenceReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
