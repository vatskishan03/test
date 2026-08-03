import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 191. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 191. -/
theorem tropicalOverlapRelation8_provenance_row191 :
    tropicalOverlapRelation8Row191 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row191 := by
  rw [tropicalOverlapRelation8_sourceCombination_row191]
  unfold tropicalOverlapSourceCombination8Row191
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row191,
    tropicalOverlapSourceJExponent8_replay_row191]

end

end MonochromaticQuantumGraphs.N8D3
