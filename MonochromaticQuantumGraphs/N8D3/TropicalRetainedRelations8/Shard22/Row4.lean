import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 114. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 114. -/
theorem tropicalOverlapRelation8_provenance_row114 :
    tropicalOverlapRelation8Row114 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row114 := by
  rw [tropicalOverlapRelation8_sourceCombination_row114]
  unfold tropicalOverlapSourceCombination8Row114
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row114,
    tropicalOverlapSourceJExponent8_replay_row114]

end

end MonochromaticQuantumGraphs.N8D3
