import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 3. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 3. -/
theorem tropicalOverlapRelation8_provenance_row3 :
    tropicalOverlapRelation8Row3 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row3 := by
  rw [tropicalOverlapRelation8_sourceCombination_row3]
  unfold tropicalOverlapSourceCombination8Row3
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row3,
    tropicalOverlapSourceJExponent8_replay_row3]

end

end MonochromaticQuantumGraphs.N8D3
