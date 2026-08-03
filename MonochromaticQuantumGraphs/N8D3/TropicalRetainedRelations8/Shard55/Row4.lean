import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 279. -/
theorem tropicalOverlapRelation8_provenance_row279 :
    tropicalOverlapRelation8Row279 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row279 := by
  rw [tropicalOverlapRelation8_sourceCombination_row279]
  unfold tropicalOverlapSourceCombination8Row279
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row279,
    tropicalOverlapSourceJExponent8_replay_row279]

end

end MonochromaticQuantumGraphs.N8D3
