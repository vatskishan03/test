import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E033.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient

/-!
# Component-A factor edge 33: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

theorem tropicalComponentARawFactorEdgeProduct8_033
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentARawFactor8 8).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentARawFactor8 35).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientRelation8 35)
    (tropicalComponentARawFactor8 8)
    (tropicalComponentARawFactor8 35)
    tropicalComponentAFactorCertificate8_033 hChars
    (tropicalComponentAQuotientRelations8_hold hSupport hEq hChars 35)

end

end MonochromaticQuantumGraphs.N8D3
