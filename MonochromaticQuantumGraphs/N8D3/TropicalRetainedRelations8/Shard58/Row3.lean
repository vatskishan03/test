import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 293. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 293. -/
theorem tropicalOverlapRelation8_provenance_row293 :
    tropicalOverlapRelation8Row293 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row293 := by
  rw [tropicalOverlapRelation8_sourceCombination_row293]
  unfold tropicalOverlapSourceCombination8Row293
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row293,
    tropicalOverlapSourceJExponent8_replay_row293]

end

end MonochromaticQuantumGraphs.N8D3
