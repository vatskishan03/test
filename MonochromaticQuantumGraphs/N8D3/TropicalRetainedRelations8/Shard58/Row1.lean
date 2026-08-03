import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 291. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 291. -/
theorem tropicalOverlapRelation8_provenance_row291 :
    tropicalOverlapRelation8Row291 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row291 := by
  rw [tropicalOverlapRelation8_sourceCombination_row291]
  unfold tropicalOverlapSourceCombination8Row291
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row291,
    tropicalOverlapSourceJExponent8_replay_row291]

end

end MonochromaticQuantumGraphs.N8D3
