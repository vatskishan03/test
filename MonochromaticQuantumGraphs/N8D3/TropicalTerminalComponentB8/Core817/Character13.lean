import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character13.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character13.Target

/-! Bounded character certificate 13 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate13_8 :
    LaurentCharacterCertificate (κ := Fin 4)
      (fun i : Fin 13 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalComponentBQuotientRelation8 4)
      (terminalBCore817Basis8 13) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (-1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (101 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character13ReductionUse8
    source_eq := terminalBCore817Character13SourceEq8
    target_eq := terminalBCore817Character13TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
