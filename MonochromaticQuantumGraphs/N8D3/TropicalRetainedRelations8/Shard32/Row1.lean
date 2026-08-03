import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 161. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 161. -/
theorem tropicalOverlapRelation8_provenance_row161 :
    tropicalOverlapRelation8Row161 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row161 := by
  rw [tropicalOverlapRelation8_sourceCombination_row161]
  unfold tropicalOverlapSourceCombination8Row161
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row161,
    tropicalOverlapSourceJExponent8_replay_row161]

end

end MonochromaticQuantumGraphs.N8D3
