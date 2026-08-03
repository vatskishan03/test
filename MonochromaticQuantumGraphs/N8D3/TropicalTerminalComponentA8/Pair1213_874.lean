import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Basis
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Pairing
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.FullDifference
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Algebra

/-! Frozen Component-A terminal family 1213/874 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Complete frozen raw-source nested-face certificate. -/
def terminalA1213_874NestedFace8 :
    TropicalTerminalRawNestedFaceCertificate8 (κ := Fin 16)
      terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 tropicalTerminalRelation1213_8 :=
{ omittedExponent := (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ))
  omittedCoefficient := 1
  omittedCoefficient_ne_zero := by norm_num
  face := terminalA1213_874LeftFace8
  faceScalar := 1
  faceScalar_ne_zero := by norm_num
  faceShift := (Pi.single 139 (1 : ℤ) + Pi.single 142 ((-1) : ℤ))
  left_eq := terminalA1213_874LeftSource8_eq
  pairingSource := terminalA1213_874PairingSource8
  pairingSource_eq := terminalA1213_874PairingSource8_eq
  pairingReduction := terminalA1213_874PairingReduction8
}

/-- The selected all-zero class triggers this historical nested-face family. -/
theorem terminalA1213_874_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 2) : False := by
  exact false_of_tropicalTerminalRawNestedFaceCertificate8
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    terminalA1213_874BasisRow8 tropicalTerminalRelation874_8 tropicalTerminalRelation1213_8 terminalA1213_874NestedFace8
    (terminalA1213_874BasisRow8_holds hChars hzero)
    (tropicalTerminalRelation874_8_hold hSupport hEq)
    (tropicalTerminalRelation1213_8_hold hSupport hEq)

end

end MonochromaticQuantumGraphs.N8D3
