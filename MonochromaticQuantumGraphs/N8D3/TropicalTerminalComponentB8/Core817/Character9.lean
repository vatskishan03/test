import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character9.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character9.Target

/-! Bounded character certificate 9 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate9_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 9 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 211)
      (terminalBCore817Basis8 9) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character9ReductionUse8
    source_eq := terminalBCore817Character9SourceEq8
    target_eq := terminalBCore817Character9TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
