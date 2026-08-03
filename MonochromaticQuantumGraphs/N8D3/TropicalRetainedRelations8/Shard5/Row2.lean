import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 27. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 27. -/
theorem tropicalOverlapRelation8_provenance_row27 :
    tropicalOverlapRelation8Row27 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row27 := by
  rw [tropicalOverlapRelation8_sourceCombination_row27]
  unfold tropicalOverlapSourceCombination8Row27
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row27,
    tropicalOverlapSourceJExponent8_replay_row27]

end

end MonochromaticQuantumGraphs.N8D3
