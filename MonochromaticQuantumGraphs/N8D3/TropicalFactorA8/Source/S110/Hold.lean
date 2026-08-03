import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S110.Certificate
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3

/-!
# Component-A source reduction 110: row-local semantic hold
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source110

theorem hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    reduced.Holds (tropicalSupportWeight8 W) := by
  have hi := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row293.sourceI
  have hj := tropicalBaseRelations8_hold hSupport hEq
    tropicalOverlapProvenance8Row293.sourceJ
  have hsource : sourcePolynomial.Holds (tropicalSupportWeight8 W) := by
    rw [sourcePolynomial, tropicalOverlapRelation8_provenance_row293]
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
    tropicalComponentASourceReductionCertificate8_110 hChars hsource

end TropicalFactorA8.Internal.Source110

/-- Public source-hold API for row 110. -/
theorem tropicalComponentASourceReduced8_110_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) (hChars : TropicalComponentACharacters8 W) :
    TropicalFactorA8.Internal.Source110.reduced.Holds
      (tropicalSupportWeight8 W) :=
  TropicalFactorA8.Internal.Source110.hold hSupport hEq hChars

end

end MonochromaticQuantumGraphs.N8D3
