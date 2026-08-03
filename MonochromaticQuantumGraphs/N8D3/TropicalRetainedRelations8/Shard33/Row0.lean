import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 165. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 165. -/
theorem tropicalOverlapRelation8_provenance_row165 :
    tropicalOverlapRelation8Row165 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row165 := by
  rw [tropicalOverlapRelation8_sourceCombination_row165]
  unfold tropicalOverlapSourceCombination8Row165
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row165,
    tropicalOverlapSourceJExponent8_replay_row165]

end

end MonochromaticQuantumGraphs.N8D3
