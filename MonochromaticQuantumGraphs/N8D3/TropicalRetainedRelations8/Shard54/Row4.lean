import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 274. -/
theorem tropicalOverlapRelation8_provenance_row274 :
    tropicalOverlapRelation8Row274 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row274 := by
  rw [tropicalOverlapRelation8_sourceCombination_row274]
  unfold tropicalOverlapSourceCombination8Row274
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row274,
    tropicalOverlapSourceJExponent8_replay_row274]

end

end MonochromaticQuantumGraphs.N8D3
