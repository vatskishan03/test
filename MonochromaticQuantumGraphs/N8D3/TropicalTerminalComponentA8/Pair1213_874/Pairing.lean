import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Pairing.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Pairing.TargetEq

/-! Collected 1213/874 Pairing reduction certificate -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Frozen exact Pairing character reduction. -/
def terminalA1213_874PairingReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalA1213_874BasisRow8 terminalA1213_874PairingSource8 0 :=
{ use := terminalA1213_874PairingReductionUse8
  source_eq := terminalA1213_874PairingReduction_source_eq
  target_eq := terminalA1213_874PairingReduction_target_eq
}

end

end MonochromaticQuantumGraphs.N8D3
