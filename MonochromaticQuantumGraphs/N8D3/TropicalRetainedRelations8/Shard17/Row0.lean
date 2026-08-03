import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 85. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 85. -/
theorem tropicalOverlapRelation8_provenance_row85 :
    tropicalOverlapRelation8Row85 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row85 := by
  rw [tropicalOverlapRelation8_sourceCombination_row85]
  unfold tropicalOverlapSourceCombination8Row85
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row85,
    tropicalOverlapSourceJExponent8_replay_row85]

end

end MonochromaticQuantumGraphs.N8D3
