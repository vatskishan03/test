import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 302. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 302. -/
theorem tropicalOverlapRelation8_provenance_row302 :
    tropicalOverlapRelation8Row302 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row302 := by
  rw [tropicalOverlapRelation8_sourceCombination_row302]
  unfold tropicalOverlapSourceCombination8Row302
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row302,
    tropicalOverlapSourceJExponent8_replay_row302]

end

end MonochromaticQuantumGraphs.N8D3
