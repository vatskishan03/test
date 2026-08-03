import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character5.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character5.Target

/-! Bounded character certificate 5 for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14CharacterCertificate5_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 5 ↦ terminalBClass14Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 282)
      (terminalBClass14Basis8 5) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass14Character5ReductionUse8
    source_eq := terminalBClass14Character5SourceEq8
    target_eq := terminalBClass14Character5TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
