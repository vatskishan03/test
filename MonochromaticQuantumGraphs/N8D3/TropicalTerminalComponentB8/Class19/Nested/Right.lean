import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Right.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Right.Target

/-! Right nested reduction for Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19NestedRightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBClass19Basis8 tropicalTerminalRelation75_8 terminalBClass19NestedRightReduced8 :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass19NestedRightReductionUse8
    source_eq := terminalBClass19NestedRightSourceEq8
    target_eq := terminalBClass19NestedRightTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
