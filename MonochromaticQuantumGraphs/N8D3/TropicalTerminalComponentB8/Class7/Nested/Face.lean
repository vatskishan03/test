import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Face.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Face.Target

/-! Compatibility reduction for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7NestedFaceReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalBClass7Basis8
      ((1 : ℤ) • LaurentPolynomial.translate terminalBClass7NestedFaceShift8 terminalBClass7NestedFace8 - terminalBClass7NestedRightReduced8) 0 :=
  { use := terminalBClass7NestedFaceReductionUse8
    source_eq := terminalBClass7NestedFaceSourceEq8
    target_eq := terminalBClass7NestedFaceTargetEq8 }

end

end MonochromaticQuantumGraphs.N8D3
