import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 321. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 321. -/
theorem tropicalOverlapRelation8_provenance_row321 :
    tropicalOverlapRelation8Row321 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row321 := by
  rw [tropicalOverlapRelation8_sourceCombination_row321]
  unfold tropicalOverlapSourceCombination8Row321
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row321,
    tropicalOverlapSourceJExponent8_replay_row321]

end

end MonochromaticQuantumGraphs.N8D3
