import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 56. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 56. -/
theorem tropicalOverlapRelation8_provenance_row56 :
    tropicalOverlapRelation8Row56 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row56 := by
  rw [tropicalOverlapRelation8_sourceCombination_row56]
  unfold tropicalOverlapSourceCombination8Row56
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row56,
    tropicalOverlapSourceJExponent8_replay_row56]

end

end MonochromaticQuantumGraphs.N8D3
