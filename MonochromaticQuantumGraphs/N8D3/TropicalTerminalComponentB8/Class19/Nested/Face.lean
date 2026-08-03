import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Face.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Face.Target

/-! Compatibility reduction for Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19NestedFaceReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalBClass19Basis8
      ((1 : ℤ) • LaurentPolynomial.translate terminalBClass19NestedFaceShift8 terminalBClass19NestedFace8 - terminalBClass19NestedRightReduced8) 0 :=
  { use := terminalBClass19NestedFaceReductionUse8
    source_eq := terminalBClass19NestedFaceSourceEq8
    target_eq := terminalBClass19NestedFaceTargetEq8 }

end

end MonochromaticQuantumGraphs.N8D3
