import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character12.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character12.Target

/-! Bounded character certificate 12 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate12_8 :
    LaurentCharacterCertificate (κ := Fin 4)
      (fun i : Fin 12 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalComponentBQuotientRelation8 0)
      (terminalBCore817Basis8 12) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (-1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character12ReductionUse8
    source_eq := terminalBCore817Character12SourceEq8
    target_eq := terminalBCore817Character12TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
