import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Face.Source
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Face.Target

/-! Compatibility reduction for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817NestedFaceReduction8 :
    CharacterReductionCertificate (κ := Fin 16)
      terminalBCore817Basis8
      ((1 : ℤ) • LaurentPolynomial.translate terminalBCore817NestedFaceShift8 terminalBCore817NestedFace8 - terminalBCore817NestedRightReduced8) 0 :=
  { use := terminalBCore817NestedFaceReductionUse8
    source_eq := terminalBCore817NestedFaceSourceEq8
    target_eq := terminalBCore817NestedFaceTargetEq8 }

end

end MonochromaticQuantumGraphs.N8D3
