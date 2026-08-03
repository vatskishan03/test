import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 231. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 231. -/
theorem tropicalOverlapRelation8_provenance_row231 :
    tropicalOverlapRelation8Row231 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row231 := by
  rw [tropicalOverlapRelation8_sourceCombination_row231]
  unfold tropicalOverlapSourceCombination8Row231
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row231,
    tropicalOverlapSourceJExponent8_replay_row231]

end

end MonochromaticQuantumGraphs.N8D3
