import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character11.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character11.Target

/-! Bounded character certificate 11 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate11_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 11 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 239)
      (terminalBCore817Basis8 11) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character11ReductionUse8
    source_eq := terminalBCore817Character11SourceEq8
    target_eq := terminalBCore817Character11TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
