import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 82. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 82. -/
theorem tropicalOverlapRelation8_provenance_row82 :
    tropicalOverlapRelation8Row82 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row82 := by
  rw [tropicalOverlapRelation8_sourceCombination_row82]
  unfold tropicalOverlapSourceCombination8Row82
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row82,
    tropicalOverlapSourceJExponent8_replay_row82]

end

end MonochromaticQuantumGraphs.N8D3
