import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 78. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 78. -/
theorem tropicalOverlapRelation8_provenance_row78 :
    tropicalOverlapRelation8Row78 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row78 := by
  rw [tropicalOverlapRelation8_sourceCombination_row78]
  unfold tropicalOverlapSourceCombination8Row78
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row78,
    tropicalOverlapSourceJExponent8_replay_row78]

end

end MonochromaticQuantumGraphs.N8D3
