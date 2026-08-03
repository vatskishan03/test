import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E009.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient

/-!
# Component-A factor edge 9: semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

theorem tropicalComponentARawFactorEdgeProduct8_009
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    (tropicalComponentARawFactor8 1).factorValue
        (tropicalSupportWeight8 W) *
      (tropicalComponentARawFactor8 22).factorValue
        (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8
    (tropicalComponentAQuotientRelation8 40)
    (tropicalComponentARawFactor8 1)
    (tropicalComponentARawFactor8 22)
    tropicalComponentAFactorCertificate8_009 hChars
    (tropicalComponentAQuotientRelations8_hold hSupport hEq hChars 40)

end

end MonochromaticQuantumGraphs.N8D3
