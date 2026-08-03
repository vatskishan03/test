import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 354. -/
theorem tropicalOverlapRelation8_provenance_row354 :
    tropicalOverlapRelation8Row354 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row354 := by
  rw [tropicalOverlapRelation8_sourceCombination_row354]
  unfold tropicalOverlapSourceCombination8Row354
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row354,
    tropicalOverlapSourceJExponent8_replay_row354]

end

end MonochromaticQuantumGraphs.N8D3
