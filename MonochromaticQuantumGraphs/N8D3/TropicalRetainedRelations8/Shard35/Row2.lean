import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 177. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 177. -/
theorem tropicalOverlapRelation8_provenance_row177 :
    tropicalOverlapRelation8Row177 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row177 := by
  rw [tropicalOverlapRelation8_sourceCombination_row177]
  unfold tropicalOverlapSourceCombination8Row177
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row177,
    tropicalOverlapSourceJExponent8_replay_row177]

end

end MonochromaticQuantumGraphs.N8D3
