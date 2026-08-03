import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 273. -/
theorem tropicalOverlapRelation8_provenance_row273 :
    tropicalOverlapRelation8Row273 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row273 := by
  rw [tropicalOverlapRelation8_sourceCombination_row273]
  unfold tropicalOverlapSourceCombination8Row273
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row273,
    tropicalOverlapSourceJExponent8_replay_row273]

end

end MonochromaticQuantumGraphs.N8D3
