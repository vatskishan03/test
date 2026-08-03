import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 41. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 41. -/
theorem tropicalOverlapRelation8_provenance_row41 :
    tropicalOverlapRelation8Row41 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row41 := by
  rw [tropicalOverlapRelation8_sourceCombination_row41]
  unfold tropicalOverlapSourceCombination8Row41
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row41,
    tropicalOverlapSourceJExponent8_replay_row41]

end

end MonochromaticQuantumGraphs.N8D3
