import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 306. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 306. -/
theorem tropicalOverlapRelation8_provenance_row306 :
    tropicalOverlapRelation8Row306 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row306 := by
  rw [tropicalOverlapRelation8_sourceCombination_row306]
  unfold tropicalOverlapSourceCombination8Row306
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row306,
    tropicalOverlapSourceJExponent8_replay_row306]

end

end MonochromaticQuantumGraphs.N8D3
