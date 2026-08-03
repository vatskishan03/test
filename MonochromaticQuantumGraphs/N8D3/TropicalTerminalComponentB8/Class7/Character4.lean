import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character4.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character4.Target

/-! Bounded character certificate 4 for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7CharacterCertificate4_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 4 ↦ terminalBClass7Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 19)
      (terminalBClass7Basis8 4) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (111 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass7Character4ReductionUse8
    source_eq := terminalBClass7Character4SourceEq8
    target_eq := terminalBClass7Character4TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
