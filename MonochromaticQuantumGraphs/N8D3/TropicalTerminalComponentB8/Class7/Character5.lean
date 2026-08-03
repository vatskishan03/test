import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character5.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character5.Target

/-! Bounded character certificate 5 for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7CharacterCertificate5_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 5 ↦ terminalBClass7Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 45)
      (terminalBClass7Basis8 5) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass7Character5ReductionUse8
    source_eq := terminalBClass7Character5SourceEq8
    target_eq := terminalBClass7Character5TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
