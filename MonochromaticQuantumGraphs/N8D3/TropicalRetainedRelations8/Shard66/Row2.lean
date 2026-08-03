import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 332. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 332. -/
theorem tropicalOverlapRelation8_provenance_row332 :
    tropicalOverlapRelation8Row332 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row332 := by
  rw [tropicalOverlapRelation8_sourceCombination_row332]
  unfold tropicalOverlapSourceCombination8Row332
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row332,
    tropicalOverlapSourceJExponent8_replay_row332]

end

end MonochromaticQuantumGraphs.N8D3
