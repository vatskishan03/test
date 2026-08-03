import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Face

/-! Complete nested-face certificate for Class19. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass19NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin 9) (κRight := Fin 8)
      (κFace := Fin 16) terminalBClass19Basis8
      tropicalTerminalRelation73_8 tropicalTerminalRelation75_8 :=
  { omittedExponent := terminalBClass19NestedOmittedExponent8
    omittedCoefficient := (1 : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := terminalBClass19NestedFace8
    rightReduced := terminalBClass19NestedRightReduced8
    faceScalar := (1 : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := terminalBClass19NestedFaceShift8
    leftReduction := terminalBClass19NestedLeftReduction8
    rightReduction := terminalBClass19NestedRightReduction8
    faceReduction := terminalBClass19NestedFaceReduction8 }

end

end MonochromaticQuantumGraphs.N8D3
