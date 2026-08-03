import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 60. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 60. -/
theorem tropicalOverlapRelation8_provenance_row60 :
    tropicalOverlapRelation8Row60 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row60 := by
  rw [tropicalOverlapRelation8_sourceCombination_row60]
  unfold tropicalOverlapSourceCombination8Row60
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row60,
    tropicalOverlapSourceJExponent8_replay_row60]

end

end MonochromaticQuantumGraphs.N8D3
