import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Right.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Right.Target

/-! Right nested reduction for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817NestedRightReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 8)
      terminalBCore817Basis8 tropicalTerminalRelation1213_8 terminalBCore817NestedRightReduced8 :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBCore817NestedRightReductionUse8
    source_eq := terminalBCore817NestedRightSourceEq8
    target_eq := terminalBCore817NestedRightTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
