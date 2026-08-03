import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 70. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 70. -/
theorem tropicalOverlapRelation8_provenance_row70 :
    tropicalOverlapRelation8Row70 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row70 := by
  rw [tropicalOverlapRelation8_sourceCombination_row70]
  unfold tropicalOverlapSourceCombination8Row70
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row70,
    tropicalOverlapSourceJExponent8_replay_row70]

end

end MonochromaticQuantumGraphs.N8D3
