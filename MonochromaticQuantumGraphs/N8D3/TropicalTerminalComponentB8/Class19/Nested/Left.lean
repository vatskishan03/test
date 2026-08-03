import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Left.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Left.Target

/-! Left nested reduction for Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19NestedLeftReduction8 :
    NormalizedCharacterReductionCertificate (κ := Fin 9)
      terminalBClass19Basis8 tropicalTerminalRelation73_8
      (Finsupp.single terminalBClass19NestedOmittedExponent8
        (1 : ℤ) + terminalBClass19NestedFace8) :=
  { unit := (1 : ℤ)
    unit_ne_zero := by norm_num
    reduction := { use := terminalBClass19NestedLeftReductionUse8
    source_eq := terminalBClass19NestedLeftSourceEq8
    target_eq := terminalBClass19NestedLeftTargetEq8 } }

end

end MonochromaticQuantumGraphs.N8D3
