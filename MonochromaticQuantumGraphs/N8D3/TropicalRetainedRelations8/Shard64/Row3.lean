import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 323. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 323. -/
theorem tropicalOverlapRelation8_provenance_row323 :
    tropicalOverlapRelation8Row323 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row323 := by
  rw [tropicalOverlapRelation8_sourceCombination_row323]
  unfold tropicalOverlapSourceCombination8Row323
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row323,
    tropicalOverlapSourceJExponent8_replay_row323]

end

end MonochromaticQuantumGraphs.N8D3
