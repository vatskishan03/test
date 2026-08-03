import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 139. -/
theorem tropicalOverlapRelation8_provenance_row139 :
    tropicalOverlapRelation8Row139 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row139 := by
  rw [tropicalOverlapRelation8_sourceCombination_row139]
  unfold tropicalOverlapSourceCombination8Row139
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row139,
    tropicalOverlapSourceJExponent8_replay_row139]

end

end MonochromaticQuantumGraphs.N8D3
