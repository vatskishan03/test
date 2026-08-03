import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 346. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 346. -/
theorem tropicalOverlapRelation8_provenance_row346 :
    tropicalOverlapRelation8Row346 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row346 := by
  rw [tropicalOverlapRelation8_sourceCombination_row346]
  unfold tropicalOverlapSourceCombination8Row346
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row346,
    tropicalOverlapSourceJExponent8_replay_row346]

end

end MonochromaticQuantumGraphs.N8D3
