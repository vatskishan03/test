import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 170. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 170. -/
theorem tropicalOverlapRelation8_provenance_row170 :
    tropicalOverlapRelation8Row170 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row170 := by
  rw [tropicalOverlapRelation8_sourceCombination_row170]
  unfold tropicalOverlapSourceCombination8Row170
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row170,
    tropicalOverlapSourceJExponent8_replay_row170]

end

end MonochromaticQuantumGraphs.N8D3
