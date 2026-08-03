import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 324. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 324. -/
theorem tropicalOverlapRelation8_provenance_row324 :
    tropicalOverlapRelation8Row324 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row324 := by
  rw [tropicalOverlapRelation8_sourceCombination_row324]
  unfold tropicalOverlapSourceCombination8Row324
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row324,
    tropicalOverlapSourceJExponent8_replay_row324]

end

end MonochromaticQuantumGraphs.N8D3
