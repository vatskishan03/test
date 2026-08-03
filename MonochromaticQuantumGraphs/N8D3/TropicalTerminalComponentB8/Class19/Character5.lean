import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Character5.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Character5.Target

/-! Bounded character certificate 5 for Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19CharacterCertificate5_8 :
    LaurentCharacterCertificate (κ := Fin 6)
      (fun i : Fin 5 ↦ terminalBClass19Basis8 ⟨i.val, by omega⟩) (tropicalOverlapRelation8 293)
      (terminalBClass19Basis8 5) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    shift := (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))
    reduction := { use := terminalBClass19Character5ReductionUse8
    source_eq := terminalBClass19Character5SourceEq8
    target_eq := terminalBClass19Character5TargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
