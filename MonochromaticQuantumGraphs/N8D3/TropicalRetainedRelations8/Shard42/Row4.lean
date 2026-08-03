import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 214. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 214. -/
theorem tropicalOverlapRelation8_provenance_row214 :
    tropicalOverlapRelation8Row214 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row214 := by
  rw [tropicalOverlapRelation8_sourceCombination_row214]
  unfold tropicalOverlapSourceCombination8Row214
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row214,
    tropicalOverlapSourceJExponent8_replay_row214]

end

end MonochromaticQuantumGraphs.N8D3
