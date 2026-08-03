import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 39. -/
theorem tropicalOverlapRelation8_provenance_row39 :
    tropicalOverlapRelation8Row39 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row39 := by
  rw [tropicalOverlapRelation8_sourceCombination_row39]
  unfold tropicalOverlapSourceCombination8Row39
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row39,
    tropicalOverlapSourceJExponent8_replay_row39]

end

end MonochromaticQuantumGraphs.N8D3
