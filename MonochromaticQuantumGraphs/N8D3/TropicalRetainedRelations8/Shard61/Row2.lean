import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 307. -/
theorem tropicalOverlapRelation8_provenance_row307 :
    tropicalOverlapRelation8Row307 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row307 := by
  rw [tropicalOverlapRelation8_sourceCombination_row307]
  unfold tropicalOverlapSourceCombination8Row307
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row307,
    tropicalOverlapSourceJExponent8_replay_row307]

end

end MonochromaticQuantumGraphs.N8D3
