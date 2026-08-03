import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S088.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8

/-!
# Source 88 semantic hold (the only retained aggregate import)
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source088

/-- Semantic hold for the row-local normalized source. -/
theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentBCharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
  have hi := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row219.sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row219.sourceJ
  have hsource : sourcePolynomial.Holds (tropicalSupportWeight8 W) := by
    rw [sourcePolynomial, tropicalOverlapRelation8_provenance_row219]
    unfold tropicalOverlapProvenancePolynomial8
    unfold LaurentPolynomial.Holds at hi hj ⊢
    rw [LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_sub,
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport),
      LaurentPolynomial.eval_translate _
        (tropicalSupportWeight8_ne_zero hSupport), hi, hj]
    simp
  exact holds_of_normalizedCharacterReductionCertificate
    (tropicalSupportWeight8 W) (tropicalSupportWeight8_ne_zero hSupport)
    tropicalComponentBCharacter8 sourcePolynomial reduced
    tropicalComponentBSourceReductionCertificate8_088
    hChars hsource

end TropicalFactorB8.Internal.Source088

end

end MonochromaticQuantumGraphs.N8D3
