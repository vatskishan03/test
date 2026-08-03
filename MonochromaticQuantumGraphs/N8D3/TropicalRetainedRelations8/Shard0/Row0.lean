import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 0. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 0. -/
theorem tropicalOverlapRelation8_provenance_row0 :
    tropicalOverlapRelation8Row0 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row0 := by
  rw [tropicalOverlapRelation8_sourceCombination_row0]
  unfold tropicalOverlapSourceCombination8Row0
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row0,
    tropicalOverlapSourceJExponent8_replay_row0]

end

end MonochromaticQuantumGraphs.N8D3
