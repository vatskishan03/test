import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Left.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Left.TargetEq

/-! Collected 437/65 Left reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen normalized Left reduction. -/
def terminalA437_65LeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalA437_65BasisRow8 tropicalTerminalRelation65_8 terminalA437_65LeftReduced8 :=
{ unit := 1
  unit_ne_zero := by norm_num
  reduction :=
  { use := terminalA437_65LeftReductionUse8
    source_eq := terminalA437_65LeftReduction_source_eq
    target_eq := terminalA437_65LeftReduction_target_eq
  }
}

end

end MonochromaticQuantumGraphs.N8D3
