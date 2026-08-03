import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 278. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 278. -/
theorem tropicalOverlapRelation8_provenance_row278 :
    tropicalOverlapRelation8Row278 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row278 := by
  rw [tropicalOverlapRelation8_sourceCombination_row278]
  unfold tropicalOverlapSourceCombination8Row278
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row278,
    tropicalOverlapSourceJExponent8_replay_row278]

end

end MonochromaticQuantumGraphs.N8D3
