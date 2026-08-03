import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 275. -/
theorem tropicalOverlapRelation8_provenance_row275 :
    tropicalOverlapRelation8Row275 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row275 := by
  rw [tropicalOverlapRelation8_sourceCombination_row275]
  unfold tropicalOverlapSourceCombination8Row275
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row275,
    tropicalOverlapSourceJExponent8_replay_row275]

end

end MonochromaticQuantumGraphs.N8D3
