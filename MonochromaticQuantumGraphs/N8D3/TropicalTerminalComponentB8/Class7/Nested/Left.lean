import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Left.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Left.Target

/-! Left nested reduction for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7NestedLeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalBClass7Basis8 tropicalTerminalRelation65_8
      (Finsupp.single terminalBClass7NestedOmittedExponent8
        (1 : ℤ) + terminalBClass7NestedFace8) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass7NestedLeftReductionUse8
    source_eq := terminalBClass7NestedLeftSourceEq8
    target_eq := terminalBClass7NestedLeftTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
