import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 288. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 288. -/
theorem tropicalOverlapRelation8_provenance_row288 :
    tropicalOverlapRelation8Row288 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row288 := by
  rw [tropicalOverlapRelation8_sourceCombination_row288]
  unfold tropicalOverlapSourceCombination8Row288
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row288,
    tropicalOverlapSourceJExponent8_replay_row288]

end

end MonochromaticQuantumGraphs.N8D3
