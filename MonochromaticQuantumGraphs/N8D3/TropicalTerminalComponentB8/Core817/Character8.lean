import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character8.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character8.Target

/-! Bounded character certificate 8 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate8_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 8 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 30)
      (terminalBCore817Basis8 8) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character8ReductionUse8
    source_eq := terminalBCore817Character8SourceEq8
    target_eq := terminalBCore817Character8TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
