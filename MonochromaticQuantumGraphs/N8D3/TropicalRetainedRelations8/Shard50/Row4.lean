import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 254. -/
theorem tropicalOverlapRelation8_provenance_row254 :
    tropicalOverlapRelation8Row254 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row254 := by
  rw [tropicalOverlapRelation8_sourceCombination_row254]
  unfold tropicalOverlapSourceCombination8Row254
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row254,
    tropicalOverlapSourceJExponent8_replay_row254]

end

end MonochromaticQuantumGraphs.N8D3
