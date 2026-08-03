import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 247. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 247. -/
theorem tropicalOverlapRelation8_provenance_row247 :
    tropicalOverlapRelation8Row247 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row247 := by
  rw [tropicalOverlapRelation8_sourceCombination_row247]
  unfold tropicalOverlapSourceCombination8Row247
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row247,
    tropicalOverlapSourceJExponent8_replay_row247]

end

end MonochromaticQuantumGraphs.N8D3
