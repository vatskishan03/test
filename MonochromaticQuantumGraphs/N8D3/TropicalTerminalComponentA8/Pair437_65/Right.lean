import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right.TargetEq

/-! Collected 437/65 Right reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized Right reduction. -/
def terminalA437_65RightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalA437_65BasisRow8 tropicalTerminalRelation437_8 terminalA437_65RightReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA437_65RightReductionUse8
    source_eq := terminalA437_65RightReduction_source_eq
    target_eq := terminalA437_65RightReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
