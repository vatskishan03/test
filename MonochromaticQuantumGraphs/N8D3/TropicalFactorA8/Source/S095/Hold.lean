import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S095.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row2

/-!
# Component-A source reduction 95: row-local semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source095

theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
  have hi := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row257.sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row257.sourceJ
  have hsource : sourcePolynomial.Holds (tropicalSupportWeight8 W) := by
    rw [sourcePolynomial, tropicalOverlapRelation8_provenance_row257]
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
    tropicalComponentACharacter8 sourcePolynomial reduced
    tropicalComponentASourceReductionCertificate8_095 hChars hsource

end TropicalFactorA8.Internal.Source095

/-- Public source-hold API for row 95. -/
theorem tropicalComponentASourceReduced8_095_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Source095.reduced.Holds
      (tropicalSupportWeight8 W) :=
  TropicalFactorA8.Internal.Source095.hold hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
