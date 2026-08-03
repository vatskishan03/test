import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 313. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 313. -/
theorem tropicalOverlapRelation8_provenance_row313 :
    tropicalOverlapRelation8Row313 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row313 := by
  rw [tropicalOverlapRelation8_sourceCombination_row313]
  unfold tropicalOverlapSourceCombination8Row313
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row313,
    tropicalOverlapSourceJExponent8_replay_row313]

end

end MonochromaticQuantumGraphs.N8D3
