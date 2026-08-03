import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 124. -/
theorem tropicalOverlapRelation8_provenance_row124 :
    tropicalOverlapRelation8Row124 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row124 := by
  rw [tropicalOverlapRelation8_sourceCombination_row124]
  unfold tropicalOverlapSourceCombination8Row124
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row124,
    tropicalOverlapSourceJExponent8_replay_row124]

end

end MonochromaticQuantumGraphs.N8D3
