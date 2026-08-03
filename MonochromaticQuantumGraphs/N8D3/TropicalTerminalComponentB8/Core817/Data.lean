import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.LaurentNestedFaceCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Replay
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-! Basis data for terminal Component-B destination Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817RawSource8 : Fin 5 → Fin 49 :=
![
  12, 13, 14, 32, 33
]

def terminalBCore817RawClass8 : Fin 5 → Fin 23 :=
![
  8, 8, 8, 17, 17
]

def terminalBCore817InitialSource8 :
    Fin 7 → FactorBasisSource (Fin 2) (Fin 5) :=
![
  .base 0, .base 1, .raw 0, .raw 1, .raw 2, .raw 3,
  .raw 4
]

def terminalBCore817InitialBasis8 : Fin 7 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBCore817InitialSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBCore817RawSource8 r))

def terminalBCore817Basis8 :
    Fin 16 → SignedCharacterRow (Fin 144) :=
![
  terminalBCore817InitialBasis8 0,
  terminalBCore817InitialBasis8 1,
  terminalBCore817InitialBasis8 2,
  terminalBCore817InitialBasis8 3,
  terminalBCore817InitialBasis8 4,
  terminalBCore817InitialBasis8 5,
  terminalBCore817InitialBasis8 6,
  tropicalBinomialCharacter8 1 25 7 19,
  tropicalBinomialCharacter8 1 26 7 20,
  tropicalBinomialCharacter8 48 109 49 108,
  tropicalBinomialCharacter8 48 112 49 111,
  tropicalBinomialCharacter8 48 115 49 114,
  tropicalBinomialCharacter8 38 99 39 98,
  tropicalBinomialCharacter8 38 102 39 101,
  tropicalBinomialCharacter8 38 105 39 104,
  tropicalBinomialCharacter8 38 42 39 41
]

end

end MonochromaticQuantumGraphs.N8D3
