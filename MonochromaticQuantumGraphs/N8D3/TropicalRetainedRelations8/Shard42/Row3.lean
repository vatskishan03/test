import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 213. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 213. -/
theorem tropicalOverlapRelation8_provenance_row213 :
    tropicalOverlapRelation8Row213 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row213 := by
  rw [tropicalOverlapRelation8_sourceCombination_row213]
  unfold tropicalOverlapSourceCombination8Row213
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row213,
    tropicalOverlapSourceJExponent8_replay_row213]

end

end MonochromaticQuantumGraphs.N8D3
