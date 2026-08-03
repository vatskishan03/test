import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 246. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 246. -/
theorem tropicalOverlapRelation8_provenance_row246 :
    tropicalOverlapRelation8Row246 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row246 := by
  rw [tropicalOverlapRelation8_sourceCombination_row246]
  unfold tropicalOverlapSourceCombination8Row246
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row246,
    tropicalOverlapSourceJExponent8_replay_row246]

end

end MonochromaticQuantumGraphs.N8D3
