import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 201. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 201. -/
theorem tropicalOverlapRelation8_provenance_row201 :
    tropicalOverlapRelation8Row201 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row201 := by
  rw [tropicalOverlapRelation8_sourceCombination_row201]
  unfold tropicalOverlapSourceCombination8Row201
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row201,
    tropicalOverlapSourceJExponent8_replay_row201]

end

end MonochromaticQuantumGraphs.N8D3
