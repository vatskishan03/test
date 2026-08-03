import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character10.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character10.Target

/-! Bounded character certificate 10 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate10_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 10 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 225)
      (terminalBCore817Basis8 10) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character10ReductionUse8
    source_eq := terminalBCore817Character10SourceEq8
    target_eq := terminalBCore817Character10TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
