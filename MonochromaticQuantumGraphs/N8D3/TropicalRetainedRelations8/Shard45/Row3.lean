import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 228. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 228. -/
theorem tropicalOverlapRelation8_provenance_row228 :
    tropicalOverlapRelation8Row228 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row228 := by
  rw [tropicalOverlapRelation8_sourceCombination_row228]
  unfold tropicalOverlapSourceCombination8Row228
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row228,
    tropicalOverlapSourceJExponent8_replay_row228]

end

end MonochromaticQuantumGraphs.N8D3
