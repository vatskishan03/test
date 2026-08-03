import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 187. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 187. -/
theorem tropicalOverlapRelation8_provenance_row187 :
    tropicalOverlapRelation8Row187 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row187 := by
  rw [tropicalOverlapRelation8_sourceCombination_row187]
  unfold tropicalOverlapSourceCombination8Row187
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row187,
    tropicalOverlapSourceJExponent8_replay_row187]

end

end MonochromaticQuantumGraphs.N8D3
