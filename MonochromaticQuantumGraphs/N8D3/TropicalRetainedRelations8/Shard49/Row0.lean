import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 245. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 245. -/
theorem tropicalOverlapRelation8_provenance_row245 :
    tropicalOverlapRelation8Row245 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row245 := by
  rw [tropicalOverlapRelation8_sourceCombination_row245]
  unfold tropicalOverlapSourceCombination8Row245
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row245,
    tropicalOverlapSourceJExponent8_replay_row245]

end

end MonochromaticQuantumGraphs.N8D3
