import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 258. -/
theorem tropicalOverlapRelation8_provenance_row258 :
    tropicalOverlapRelation8Row258 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row258 := by
  rw [tropicalOverlapRelation8_sourceCombination_row258]
  unfold tropicalOverlapSourceCombination8Row258
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row258,
    tropicalOverlapSourceJExponent8_replay_row258]

end

end MonochromaticQuantumGraphs.N8D3
