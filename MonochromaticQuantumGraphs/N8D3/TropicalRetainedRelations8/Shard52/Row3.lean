import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 263. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 263. -/
theorem tropicalOverlapRelation8_provenance_row263 :
    tropicalOverlapRelation8Row263 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row263 := by
  rw [tropicalOverlapRelation8_sourceCombination_row263]
  unfold tropicalOverlapSourceCombination8Row263
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row263,
    tropicalOverlapSourceJExponent8_replay_row263]

end

end MonochromaticQuantumGraphs.N8D3
