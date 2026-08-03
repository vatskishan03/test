import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 125. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 125. -/
theorem tropicalOverlapRelation8_provenance_row125 :
    tropicalOverlapRelation8Row125 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row125 := by
  rw [tropicalOverlapRelation8_sourceCombination_row125]
  unfold tropicalOverlapSourceCombination8Row125
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row125,
    tropicalOverlapSourceJExponent8_replay_row125]

end

end MonochromaticQuantumGraphs.N8D3
