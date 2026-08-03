import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 73. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 73. -/
theorem tropicalOverlapRelation8_provenance_row73 :
    tropicalOverlapRelation8Row73 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row73 := by
  rw [tropicalOverlapRelation8_sourceCombination_row73]
  unfold tropicalOverlapSourceCombination8Row73
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row73,
    tropicalOverlapSourceJExponent8_replay_row73]

end

end MonochromaticQuantumGraphs.N8D3
