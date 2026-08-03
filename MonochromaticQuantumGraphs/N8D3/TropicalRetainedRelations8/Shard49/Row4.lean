import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 249. -/
theorem tropicalOverlapRelation8_provenance_row249 :
    tropicalOverlapRelation8Row249 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row249 := by
  rw [tropicalOverlapRelation8_sourceCombination_row249]
  unfold tropicalOverlapSourceCombination8Row249
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row249,
    tropicalOverlapSourceJExponent8_replay_row249]

end

end MonochromaticQuantumGraphs.N8D3
