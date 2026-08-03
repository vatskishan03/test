import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 331. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 331. -/
theorem tropicalOverlapRelation8_provenance_row331 :
    tropicalOverlapRelation8Row331 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row331 := by
  rw [tropicalOverlapRelation8_sourceCombination_row331]
  unfold tropicalOverlapSourceCombination8Row331
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row331,
    tropicalOverlapSourceJExponent8_replay_row331]

end

end MonochromaticQuantumGraphs.N8D3
