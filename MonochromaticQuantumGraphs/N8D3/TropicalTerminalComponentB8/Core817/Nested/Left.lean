import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Left.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Left.Target

/-! Left nested reduction for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817NestedLeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalBCore817Basis8 tropicalTerminalRelation874_8
      (Finsupp.single terminalBCore817NestedOmittedExponent8
        (1 : ℤ) + terminalBCore817NestedFace8) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBCore817NestedLeftReductionUse8
    source_eq := terminalBCore817NestedLeftSourceEq8
    target_eq := terminalBCore817NestedLeftTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
