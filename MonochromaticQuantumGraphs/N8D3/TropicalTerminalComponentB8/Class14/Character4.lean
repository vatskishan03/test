import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character4.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character4.Target

/-! Bounded character certificate 4 for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14CharacterCertificate4_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 4 ↦ terminalBClass14Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 246)
      (terminalBClass14Basis8 4) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass14Character4ReductionUse8
    source_eq := terminalBClass14Character4SourceEq8
    target_eq := terminalBClass14Character4TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
