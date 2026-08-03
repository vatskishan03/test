import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Face

/-! Complete nested-face certificate for Core817. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

def terminalBCore817NestedCertificate8 :
    LaurentNestedFaceCertificate
      (κLeft := Fin 9) (κRight := Fin 8)
      (κFace := Fin 16) terminalBCore817Basis8
      tropicalTerminalRelation874_8 tropicalTerminalRelation1213_8 :=
  { omittedExponent := terminalBCore817NestedOmittedExponent8
    omittedCoefficient := (1 : ℤ)
    omittedCoefficient_ne_zero := by norm_num
    face := terminalBCore817NestedFace8
    rightReduced := terminalBCore817NestedRightReduced8
    faceScalar := (1 : ℤ)
    faceScalar_ne_zero := by norm_num
    faceShift := terminalBCore817NestedFaceShift8
    leftReduction := terminalBCore817NestedLeftReduction8
    rightReduction := terminalBCore817NestedRightReduction8
    faceReduction := terminalBCore817NestedFaceReduction8 }

end

end MonochromaticQuantumGraphs.N8D3
