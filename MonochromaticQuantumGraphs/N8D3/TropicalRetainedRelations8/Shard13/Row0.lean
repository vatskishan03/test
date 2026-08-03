import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 65. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 65. -/
theorem tropicalOverlapRelation8_provenance_row65 :
    tropicalOverlapRelation8Row65 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row65 := by
  rw [tropicalOverlapRelation8_sourceCombination_row65]
  unfold tropicalOverlapSourceCombination8Row65
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row65,
    tropicalOverlapSourceJExponent8_replay_row65]

end

end MonochromaticQuantumGraphs.N8D3
