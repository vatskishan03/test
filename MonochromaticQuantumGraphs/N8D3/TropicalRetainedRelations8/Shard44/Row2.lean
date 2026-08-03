import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 222. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 222. -/
theorem tropicalOverlapRelation8_provenance_row222 :
    tropicalOverlapRelation8Row222 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row222 := by
  rw [tropicalOverlapRelation8_sourceCombination_row222]
  unfold tropicalOverlapSourceCombination8Row222
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row222,
    tropicalOverlapSourceJExponent8_replay_row222]

end

end MonochromaticQuantumGraphs.N8D3
