import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 116. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 116. -/
theorem tropicalOverlapRelation8_provenance_row116 :
    tropicalOverlapRelation8Row116 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row116 := by
  rw [tropicalOverlapRelation8_sourceCombination_row116]
  unfold tropicalOverlapSourceCombination8Row116
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row116,
    tropicalOverlapSourceJExponent8_replay_row116]

end

end MonochromaticQuantumGraphs.N8D3
