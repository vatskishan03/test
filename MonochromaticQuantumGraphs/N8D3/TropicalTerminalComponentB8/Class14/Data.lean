import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.LaurentNestedFaceCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Replay
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-! Basis data for terminal Component-B destination Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14RawSource8 : Fin 1 → Fin 49 :=
![
  27
]

def terminalBClass14RawClass8 : Fin 1 → Fin 23 :=
![
  14
]

def terminalBClass14InitialSource8 :
    Fin 3 → FactorBasisSource (Fin 2) (Fin 1) :=
![
  .base 0, .base 1, .raw 0
]

def terminalBClass14InitialBasis8 : Fin 3 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBClass14InitialSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass14RawSource8 r))

def terminalBClass14Basis8 :
    Fin 6 → SignedCharacterRow (Fin 144) :=
![
  terminalBClass14InitialBasis8 0,
  terminalBClass14InitialBasis8 1,
  terminalBClass14InitialBasis8 2,
  tropicalBinomialCharacter8 6 41 7 38,
  tropicalBinomialCharacter8 6 42 7 39,
  tropicalBinomialCharacter8 6 43 7 40
]

end

end MonochromaticQuantumGraphs.N8D3
