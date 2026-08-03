import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Face

/-! Complete nested-face certificate for Class7. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass7NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin 9) (κRight := Fin 8)
      (κFace := Fin 16) terminalBClass7Basis8
      tropicalTerminalRelation65_8 tropicalTerminalRelation437_8 :=
  { omittedExponent := terminalBClass7NestedOmittedExponent8
    omittedCoefficient := (1 : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := terminalBClass7NestedFace8
    rightReduced := terminalBClass7NestedRightReduced8
    faceScalar := (1 : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := terminalBClass7NestedFaceShift8
    leftReduction := terminalBClass7NestedLeftReduction8
    rightReduction := terminalBClass7NestedRightReduction8
    faceReduction := terminalBClass7NestedFaceReduction8 }

end

end MonochromaticQuantumGraphs.N8D3
