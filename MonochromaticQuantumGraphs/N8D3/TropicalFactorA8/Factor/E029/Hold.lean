import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E029.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q002.Hold

/-!
# Component-A factor edge 29: exactly one quotient hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor029

theorem product
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    leftFactor.factorValue (tropicalSupportWeight8 W) *
      rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 sourceRelation leftFactor rightFactor
    tropicalComponentAFactorCertificate8_029 hChars
    (by
      simpa [sourceRelation] using
        TropicalFactorA8.Internal.Quotient002.hold
          hSupport hEq hChars)

end TropicalFactorA8.Internal.Factor029

/-- Public product-vanishing API for raw factor edge 29. -/
theorem tropicalComponentARawFactorEdgeProduct8_029
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Factor029.leftFactor.factorValue (tropicalSupportWeight8 W) *
      TropicalFactorA8.Internal.Factor029.rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  TropicalFactorA8.Internal.Factor029.product hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
