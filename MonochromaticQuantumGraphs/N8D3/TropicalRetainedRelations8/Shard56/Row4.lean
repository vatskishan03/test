import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 284. -/
theorem tropicalOverlapRelation8_provenance_row284 :
    tropicalOverlapRelation8Row284 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row284 := by
  rw [tropicalOverlapRelation8_sourceCombination_row284]
  unfold tropicalOverlapSourceCombination8Row284
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row284,
    tropicalOverlapSourceJExponent8_replay_row284]

end

end MonochromaticQuantumGraphs.N8D3
