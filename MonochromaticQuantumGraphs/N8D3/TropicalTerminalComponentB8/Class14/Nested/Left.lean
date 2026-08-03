import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Left.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Left.Target

/-! Left nested reduction for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14NestedLeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 7)
      terminalBClass14Basis8 tropicalTerminalRelation74_8
      (Finsupp.single terminalBClass14NestedOmittedExponent8
        (1 : ℤ) + terminalBClass14NestedFace8) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass14NestedLeftReductionUse8
    source_eq := terminalBClass14NestedLeftSourceEq8
    target_eq := terminalBClass14NestedLeftTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
