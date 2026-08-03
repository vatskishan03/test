import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 221. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 221. -/
theorem tropicalOverlapRelation8_provenance_row221 :
    tropicalOverlapRelation8Row221 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row221 := by
  rw [tropicalOverlapRelation8_sourceCombination_row221]
  unfold tropicalOverlapSourceCombination8Row221
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row221,
    tropicalOverlapSourceJExponent8_replay_row221]

end

end MonochromaticQuantumGraphs.N8D3
