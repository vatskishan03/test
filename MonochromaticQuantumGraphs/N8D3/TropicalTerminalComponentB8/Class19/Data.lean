import MonochromaticQuantumGraphs.LaurentBasisCertificate
import MonochromaticQuantumGraphs.LaurentNestedFaceCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Replay
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8

/-! Basis data for terminal Component-B destination Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19RawSource8 : Fin 1 → Fin 49 :=
![
  39
]

def terminalBClass19RawClass8 : Fin 1 → Fin 23 :=
![
  19
]

def terminalBClass19InitialSource8 :
    Fin 3 → FactorBasisSource (Fin 2) (Fin 1) :=
![
  .base 0, .base 1, .raw 0
]

def terminalBClass19InitialBasis8 : Fin 3 → SignedCharacterRow (Fin 144) :=
  fun i ↦ (terminalBClass19InitialSource8 i).row tropicalComponentBCharacter8
    (fun r ↦ tropicalComponentBRawFactor8 (terminalBClass19RawSource8 r))

def terminalBClass19Basis8 :
    Fin 6 → SignedCharacterRow (Fin 144) :=
![
  terminalBClass19InitialBasis8 0,
  terminalBClass19InitialBasis8 1,
  terminalBClass19InitialBasis8 2,
  tropicalBinomialCharacter8 0 41 1 38,
  tropicalBinomialCharacter8 0 42 1 39,
  tropicalBinomialCharacter8 0 43 1 40
]

end

end MonochromaticQuantumGraphs.N8D3
