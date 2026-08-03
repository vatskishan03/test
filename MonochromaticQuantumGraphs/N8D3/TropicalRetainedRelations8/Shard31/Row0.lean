import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 155. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 155. -/
theorem tropicalOverlapRelation8_provenance_row155 :
    tropicalOverlapRelation8Row155 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row155 := by
  rw [tropicalOverlapRelation8_sourceCombination_row155]
  unfold tropicalOverlapSourceCombination8Row155
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row155,
    tropicalOverlapSourceJExponent8_replay_row155]

end

end MonochromaticQuantumGraphs.N8D3
