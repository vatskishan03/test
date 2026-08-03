import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character3.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character3.Target

/-! Bounded character certificate 3 for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7CharacterCertificate3_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 3 ↦ terminalBClass7Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 0)
      (terminalBClass7Basis8 3) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass7Character3ReductionUse8
    source_eq := terminalBClass7Character3SourceEq8
    target_eq := terminalBClass7Character3TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
