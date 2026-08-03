import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 20. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 20. -/
theorem tropicalOverlapRelation8_provenance_row20 :
    tropicalOverlapRelation8Row20 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row20 := by
  rw [tropicalOverlapRelation8_sourceCombination_row20]
  unfold tropicalOverlapSourceCombination8Row20
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row20,
    tropicalOverlapSourceJExponent8_replay_row20]

end

end MonochromaticQuantumGraphs.N8D3
