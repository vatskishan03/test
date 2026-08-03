import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 133. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 133. -/
theorem tropicalOverlapRelation8_provenance_row133 :
    tropicalOverlapRelation8Row133 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row133 := by
  rw [tropicalOverlapRelation8_sourceCombination_row133]
  unfold tropicalOverlapSourceCombination8Row133
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row133,
    tropicalOverlapSourceJExponent8_replay_row133]

end

end MonochromaticQuantumGraphs.N8D3
