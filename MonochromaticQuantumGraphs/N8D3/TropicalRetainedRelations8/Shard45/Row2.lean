import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 227. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 227. -/
theorem tropicalOverlapRelation8_provenance_row227 :
    tropicalOverlapRelation8Row227 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row227 := by
  rw [tropicalOverlapRelation8_sourceCombination_row227]
  unfold tropicalOverlapSourceCombination8Row227
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row227,
    tropicalOverlapSourceJExponent8_replay_row227]

end

end MonochromaticQuantumGraphs.N8D3
