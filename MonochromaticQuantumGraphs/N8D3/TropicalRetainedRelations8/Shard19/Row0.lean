import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 95. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 95. -/
theorem tropicalOverlapRelation8_provenance_row95 :
    tropicalOverlapRelation8Row95 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row95 := by
  rw [tropicalOverlapRelation8_sourceCombination_row95]
  unfold tropicalOverlapSourceCombination8Row95
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row95,
    tropicalOverlapSourceJExponent8_replay_row95]

end

end MonochromaticQuantumGraphs.N8D3
