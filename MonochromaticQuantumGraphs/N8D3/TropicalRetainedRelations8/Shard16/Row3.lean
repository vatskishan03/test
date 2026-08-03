import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 83. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 83. -/
theorem tropicalOverlapRelation8_provenance_row83 :
    tropicalOverlapRelation8Row83 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row83 := by
  rw [tropicalOverlapRelation8_sourceCombination_row83]
  unfold tropicalOverlapSourceCombination8Row83
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row83,
    tropicalOverlapSourceJExponent8_replay_row83]

end

end MonochromaticQuantumGraphs.N8D3
