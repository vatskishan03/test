import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 204. -/
theorem tropicalOverlapRelation8_provenance_row204 :
    tropicalOverlapRelation8Row204 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row204 := by
  rw [tropicalOverlapRelation8_sourceCombination_row204]
  unfold tropicalOverlapSourceCombination8Row204
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row204,
    tropicalOverlapSourceJExponent8_replay_row204]

end

end MonochromaticQuantumGraphs.N8D3
