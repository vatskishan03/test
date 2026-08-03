import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character3.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character3.Target

/-! Bounded character certificate 3 for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14CharacterCertificate3_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 3 ↦ terminalBClass14Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 210)
      (terminalBClass14Basis8 3) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass14Character3ReductionUse8
    source_eq := terminalBClass14Character3SourceEq8
    target_eq := terminalBClass14Character3TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
