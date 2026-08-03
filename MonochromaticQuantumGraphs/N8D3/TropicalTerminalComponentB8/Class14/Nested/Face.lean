import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Face.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Face.Target

/-! Compatibility reduction for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14NestedFaceReduction8 :
    CharacterReductionCertificate (κ := Fin 12)
      terminalBClass14Basis8
      ((1 : ℤ) • LaurentPolynomial.translate terminalBClass14NestedFaceShift8 terminalBClass14NestedFace8 - terminalBClass14NestedRightReduced8) 0 :=
  { use := terminalBClass14NestedFaceReductionUse8
    source_eq := terminalBClass14NestedFaceSourceEq8
    target_eq := terminalBClass14NestedFaceTargetEq8 }

end

end MonochromaticQuantumGraphs.N8D3
