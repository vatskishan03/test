import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.LaurentNestedFaceCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Replay
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-! Basis data for terminal Component-B destination Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7RawSource8 : Fin 1 → Fin 49 :=
![
  11
]

def terminalBClass7RawClass8 : Fin 1 → Fin 23 :=
![
  7
]

def terminalBClass7InitialSource8 :
    Fin 3 → FactorBasisSource (Fin 2) (Fin 1) :=
![
  .base 0, .base 1, .raw 0
]

def terminalBClass7InitialBasis8 : Fin 3 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBClass7InitialSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass7RawSource8 r))

def terminalBClass7Basis8 :
    Fin 6 → SignedCharacterRow (Fin 144) :=
![
  terminalBClass7InitialBasis8 0,
  terminalBClass7InitialBasis8 1,
  terminalBClass7InitialBasis8 2,
  tropicalBinomialCharacter8 51 109 52 108,
  tropicalBinomialCharacter8 51 112 52 111,
  tropicalBinomialCharacter8 51 115 52 114
]

end

end MonochromaticQuantumGraphs.N8D3
