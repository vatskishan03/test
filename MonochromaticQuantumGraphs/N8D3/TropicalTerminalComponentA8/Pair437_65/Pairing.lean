import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Pairing.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Pairing.TargetEq

/-! Collected 437/65 Pairing reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen exact Pairing character reduction. -/
def terminalA437_65PairingReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalA437_65BasisRow8 terminalA437_65PairingSource8 0 :=
{ use := terminalA437_65PairingReductionUse8
  source_eq := terminalA437_65PairingReduction_source_eq
  target_eq := terminalA437_65PairingReduction_target_eq
}

end

end MonochromaticQuantumGraphs.N8D3
