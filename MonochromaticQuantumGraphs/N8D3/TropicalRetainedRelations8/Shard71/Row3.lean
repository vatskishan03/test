import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 358. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 358. -/
theorem tropicalOverlapRelation8_provenance_row358 :
    tropicalOverlapRelation8Row358 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row358 := by
  rw [tropicalOverlapRelation8_sourceCombination_row358]
  unfold tropicalOverlapSourceCombination8Row358
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row358,
    tropicalOverlapSourceJExponent8_replay_row358]

end

end MonochromaticQuantumGraphs.N8D3
