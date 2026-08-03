import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E042.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q011.Hold

/-!
# Component-A factor edge 42: exactly one quotient hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor042

theorem product
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    leftFactor.factorValue (tropicalSupportWeight8 W) *
      rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentACharacter8 sourceRelation leftFactor rightFactor
    tropicalComponentAFactorCertificate8_042 hChars
    (by
      simpa [sourceRelation] using
        TropicalFactorA8.Internal.Quotient011.hold
          hSupport hEq hChars)

end TropicalFactorA8.Internal.Factor042

/-- Public product-vanishing API for raw factor edge 42. -/
theorem tropicalComponentARawFactorEdgeProduct8_042
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Factor042.leftFactor.factorValue (tropicalSupportWeight8 W) *
      TropicalFactorA8.Internal.Factor042.rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  TropicalFactorA8.Internal.Factor042.product hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
