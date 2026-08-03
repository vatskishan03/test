import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 74. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 74. -/
theorem tropicalOverlapRelation8_provenance_row74 :
    tropicalOverlapRelation8Row74 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row74 := by
  rw [tropicalOverlapRelation8_sourceCombination_row74]
  unfold tropicalOverlapSourceCombination8Row74
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row74,
    tropicalOverlapSourceJExponent8_replay_row74]

end

end MonochromaticQuantumGraphs.N8D3
