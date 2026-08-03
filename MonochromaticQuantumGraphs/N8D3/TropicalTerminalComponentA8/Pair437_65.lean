import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Basis
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Left
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Right
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Pairing
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.FullDifference
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Algebra

/-! Frozen Component-A terminal family 437/65 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Complete frozen raw-source nested-face certificate. -/
def terminalA437_65NestedFace8 :
    TropicalTerminalRawNestedFaceCertificate8 (κ := Fin 16)
      terminalA437_65BasisRow8 tropicalTerminalRelation65_8 tropicalTerminalRelation437_8 :=
{ omittedExponent := (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ))
  omittedCoefficient := 1
  omittedCoefficient_ne_zero := by norm_num
  face := terminalA437_65LeftFace8
  faceScalar := 1
  faceScalar_ne_zero := by norm_num
  faceShift := (Pi.single 138 (1 : ℤ) + Pi.single 141 ((-1) : ℤ))
  left_eq := terminalA437_65LeftSource8_eq
  pairingSource := terminalA437_65PairingSource8
  pairingSource_eq := terminalA437_65PairingSource8_eq
  pairingReduction := terminalA437_65PairingReduction8
}

/-- The selected all-zero class triggers this historical nested-face family. -/
theorem terminalA437_65_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W)
    (hzero : AllZeroInClass tropicalComponentAClassMembers8
      (fun r ↦ (tropicalComponentARawFactor8 r).factorValue
        (tropicalSupportWeight8 W)) 7) : False := by
  exact false_of_tropicalTerminalRawNestedFaceCertificate8
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    terminalA437_65BasisRow8 tropicalTerminalRelation65_8 tropicalTerminalRelation437_8 terminalA437_65NestedFace8
    (terminalA437_65BasisRow8_holds hChars hzero)
    (tropicalTerminalRelation65_8_hold hSupport hEq)
    (tropicalTerminalRelation437_8_hold hSupport hEq)

end

end MonochromaticQuantumGraphs.N8D3
