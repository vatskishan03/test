import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 226. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 226. -/
theorem tropicalOverlapRelation8_provenance_row226 :
    tropicalOverlapRelation8Row226 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row226 := by
  rw [tropicalOverlapRelation8_sourceCombination_row226]
  unfold tropicalOverlapSourceCombination8Row226
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row226,
    tropicalOverlapSourceJExponent8_replay_row226]

end

end MonochromaticQuantumGraphs.N8D3
