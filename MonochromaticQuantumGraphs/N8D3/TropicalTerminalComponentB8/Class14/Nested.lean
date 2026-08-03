import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Face

/-! Complete nested-face certificate for Class14. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBClass14NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin 7) (κRight := Fin 6)
      (κFace := Fin 12) terminalBClass14Basis8
      tropicalTerminalRelation74_8 tropicalTerminalRelation77_8 :=
  { omittedExponent := terminalBClass14NestedOmittedExponent8
    omittedCoefficient := (1 : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := terminalBClass14NestedFace8
    rightReduced := terminalBClass14NestedRightReduced8
    faceScalar := (1 : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := terminalBClass14NestedFaceShift8
    leftReduction := terminalBClass14NestedLeftReduction8
    rightReduction := terminalBClass14NestedRightReduction8
    faceReduction := terminalBClass14NestedFaceReduction8 }

end

end MonochromaticQuantumGraphs.N8D3
