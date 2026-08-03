import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 342. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 342. -/
theorem tropicalOverlapRelation8_provenance_row342 :
    tropicalOverlapRelation8Row342 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row342 := by
  rw [tropicalOverlapRelation8_sourceCombination_row342]
  unfold tropicalOverlapSourceCombination8Row342
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row342,
    tropicalOverlapSourceJExponent8_replay_row342]

end

end MonochromaticQuantumGraphs.N8D3
