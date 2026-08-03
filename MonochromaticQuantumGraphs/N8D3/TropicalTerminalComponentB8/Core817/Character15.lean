import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character15.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Character15.Target

/-! Bounded character certificate 15 for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817CharacterCertificate15_8 :
    LaurentCharacterCertificate (κ := Fin 4)
      (fun i : Fin 15 ↦ terminalBCore817Basis8 ⟨i.val, by omega⟩) (tropicalComponentBQuotientRelation8 42)
      (terminalBCore817Basis8 15) :=
  { unit := (-1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (1 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (-1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBCore817Character15ReductionUse8
    source_eq := terminalBCore817Character15SourceEq8
    target_eq := terminalBCore817Character15TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
