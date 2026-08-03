import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 123. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 123. -/
theorem tropicalOverlapRelation8_provenance_row123 :
    tropicalOverlapRelation8Row123 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row123 := by
  rw [tropicalOverlapRelation8_sourceCombination_row123]
  unfold tropicalOverlapSourceCombination8Row123
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row123,
    tropicalOverlapSourceJExponent8_replay_row123]

end

end MonochromaticQuantumGraphs.N8D3
