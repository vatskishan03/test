import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 352. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 352. -/
theorem tropicalOverlapRelation8_provenance_row352 :
    tropicalOverlapRelation8Row352 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row352 := by
  rw [tropicalOverlapRelation8_sourceCombination_row352]
  unfold tropicalOverlapSourceCombination8Row352
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row352,
    tropicalOverlapSourceJExponent8_replay_row352]

end

end MonochromaticQuantumGraphs.N8D3
