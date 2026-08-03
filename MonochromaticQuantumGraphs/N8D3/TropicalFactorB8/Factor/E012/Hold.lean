import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E012.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q045.Hold

/-!
# Factor edge 12 hold from exactly quotient row 45
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor012

/-- Row-local product vanishing for raw factor edge 12. -/
theorem product
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    leftFactor.factorValue (tropicalSupportWeight8 W) *
      rightFactor.factorValue (tropicalSupportWeight8 W) = 0 :=
  factorValues_mul_eq_zero_of_certificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 sourceRelation leftFactor rightFactor
    tropicalComponentBFactorCertificate8_012 hChars
    (by
      simpa [sourceRelation] using
        TropicalFactorB8.Internal.Quotient045.hold
          hSupport hEq hChars)

end TropicalFactorB8.Internal.Factor012

end

end MonochromaticQuantumGraphs.N8D3
