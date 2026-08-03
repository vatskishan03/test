import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 160. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 160. -/
theorem tropicalOverlapRelation8_provenance_row160 :
    tropicalOverlapRelation8Row160 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row160 := by
  rw [tropicalOverlapRelation8_sourceCombination_row160]
  unfold tropicalOverlapSourceCombination8Row160
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row160,
    tropicalOverlapSourceJExponent8_replay_row160]

end

end MonochromaticQuantumGraphs.N8D3
