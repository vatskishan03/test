import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 44. -/
theorem tropicalOverlapRelation8_provenance_row44 :
    tropicalOverlapRelation8Row44 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row44 := by
  rw [tropicalOverlapRelation8_sourceCombination_row44]
  unfold tropicalOverlapSourceCombination8Row44
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row44,
    tropicalOverlapSourceJExponent8_replay_row44]

end

end MonochromaticQuantumGraphs.N8D3
