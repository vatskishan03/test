import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 67. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 67. -/
theorem tropicalOverlapRelation8_provenance_row67 :
    tropicalOverlapRelation8Row67 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row67 := by
  rw [tropicalOverlapRelation8_sourceCombination_row67]
  unfold tropicalOverlapSourceCombination8Row67
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row67,
    tropicalOverlapSourceJExponent8_replay_row67]

end

end MonochromaticQuantumGraphs.N8D3
