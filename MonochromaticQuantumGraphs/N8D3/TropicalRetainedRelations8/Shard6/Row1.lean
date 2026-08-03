import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 31. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 31. -/
theorem tropicalOverlapRelation8_provenance_row31 :
    tropicalOverlapRelation8Row31 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row31 := by
  rw [tropicalOverlapRelation8_sourceCombination_row31]
  unfold tropicalOverlapSourceCombination8Row31
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row31,
    tropicalOverlapSourceJExponent8_replay_row31]

end

end MonochromaticQuantumGraphs.N8D3
