import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 183. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 183. -/
theorem tropicalOverlapRelation8_provenance_row183 :
    tropicalOverlapRelation8Row183 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row183 := by
  rw [tropicalOverlapRelation8_sourceCombination_row183]
  unfold tropicalOverlapSourceCombination8Row183
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row183,
    tropicalOverlapSourceJExponent8_replay_row183]

end

end MonochromaticQuantumGraphs.N8D3
