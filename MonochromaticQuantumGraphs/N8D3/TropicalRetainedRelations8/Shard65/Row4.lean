import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 329. -/
theorem tropicalOverlapRelation8_provenance_row329 :
    tropicalOverlapRelation8Row329 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row329 := by
  rw [tropicalOverlapRelation8_sourceCombination_row329]
  unfold tropicalOverlapSourceCombination8Row329
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row329,
    tropicalOverlapSourceJExponent8_replay_row329]

end

end MonochromaticQuantumGraphs.N8D3
