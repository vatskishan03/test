import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 261. -/
theorem tropicalOverlapRelation8_provenance_row261 :
    tropicalOverlapRelation8Row261 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row261 := by
  rw [tropicalOverlapRelation8_sourceCombination_row261]
  unfold tropicalOverlapSourceCombination8Row261
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row261,
    tropicalOverlapSourceJExponent8_replay_row261]

end

end MonochromaticQuantumGraphs.N8D3
