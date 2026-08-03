import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 351. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 351. -/
theorem tropicalOverlapRelation8_provenance_row351 :
    tropicalOverlapRelation8Row351 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row351 := by
  rw [tropicalOverlapRelation8_sourceCombination_row351]
  unfold tropicalOverlapSourceCombination8Row351
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row351,
    tropicalOverlapSourceJExponent8_replay_row351]

end

end MonochromaticQuantumGraphs.N8D3
