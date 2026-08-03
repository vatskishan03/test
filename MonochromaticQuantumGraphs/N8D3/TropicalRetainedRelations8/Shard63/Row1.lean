import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 316. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 316. -/
theorem tropicalOverlapRelation8_provenance_row316 :
    tropicalOverlapRelation8Row316 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row316 := by
  rw [tropicalOverlapRelation8_sourceCombination_row316]
  unfold tropicalOverlapSourceCombination8Row316
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row316,
    tropicalOverlapSourceJExponent8_replay_row316]

end

end MonochromaticQuantumGraphs.N8D3
