import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 126. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 126. -/
theorem tropicalOverlapRelation8_provenance_row126 :
    tropicalOverlapRelation8Row126 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row126 := by
  rw [tropicalOverlapRelation8_sourceCombination_row126]
  unfold tropicalOverlapSourceCombination8Row126
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row126,
    tropicalOverlapSourceJExponent8_replay_row126]

end

end MonochromaticQuantumGraphs.N8D3
