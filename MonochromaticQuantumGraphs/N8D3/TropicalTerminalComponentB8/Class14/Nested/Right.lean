import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Right.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Right.Target

/-! Right nested reduction for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14NestedRightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      terminalBClass14Basis8 tropicalTerminalRelation77_8 terminalBClass14NestedRightReduced8 :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass14NestedRightReductionUse8
    source_eq := terminalBClass14NestedRightSourceEq8
    target_eq := terminalBClass14NestedRightTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
