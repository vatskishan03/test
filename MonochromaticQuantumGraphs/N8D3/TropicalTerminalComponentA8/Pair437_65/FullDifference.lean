import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.FullDifference.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.FullDifference.TargetEq

/-! Collected 437/65 FullDifference reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized FullDifference reduction. -/
def terminalA437_65FullDifferenceReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 17)
      terminalA437_65BasisRow8 terminalA437_65FullDifferenceSource8 terminalA437_65FullDifferenceReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA437_65FullDifferenceReductionUse8
    source_eq := terminalA437_65FullDifferenceReduction_source_eq
    target_eq := terminalA437_65FullDifferenceReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
