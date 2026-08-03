import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 89. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 89. -/
theorem tropicalOverlapRelation8_provenance_row89 :
    tropicalOverlapRelation8Row89 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row89 := by
  rw [tropicalOverlapRelation8_sourceCombination_row89]
  unfold tropicalOverlapSourceCombination8Row89
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row89,
    tropicalOverlapSourceJExponent8_replay_row89]

end

end MonochromaticQuantumGraphs.N8D3
