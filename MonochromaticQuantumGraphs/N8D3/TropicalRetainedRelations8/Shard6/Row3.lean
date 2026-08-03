import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 33. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 33. -/
theorem tropicalOverlapRelation8_provenance_row33 :
    tropicalOverlapRelation8Row33 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row33 := by
  rw [tropicalOverlapRelation8_sourceCombination_row33]
  unfold tropicalOverlapSourceCombination8Row33
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row33,
    tropicalOverlapSourceJExponent8_replay_row33]

end

end MonochromaticQuantumGraphs.N8D3
