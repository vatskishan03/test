import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Right.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Right.Target

/-! Right nested reduction for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7NestedRightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBClass7Basis8 tropicalTerminalRelation437_8 terminalBClass7NestedRightReduced8 :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass7NestedRightReductionUse8
    source_eq := terminalBClass7NestedRightSourceEq8
    target_eq := terminalBClass7NestedRightTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
