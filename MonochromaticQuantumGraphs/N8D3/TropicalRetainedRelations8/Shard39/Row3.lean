import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 198. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 198. -/
theorem tropicalOverlapRelation8_provenance_row198 :
    tropicalOverlapRelation8Row198 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row198 := by
  rw [tropicalOverlapRelation8_sourceCombination_row198]
  unfold tropicalOverlapSourceCombination8Row198
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row198,
    tropicalOverlapSourceJExponent8_replay_row198]

end

end MonochromaticQuantumGraphs.N8D3
