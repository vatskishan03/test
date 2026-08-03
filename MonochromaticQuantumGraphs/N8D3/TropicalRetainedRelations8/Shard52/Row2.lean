import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 262. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 262. -/
theorem tropicalOverlapRelation8_provenance_row262 :
    tropicalOverlapRelation8Row262 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row262 := by
  rw [tropicalOverlapRelation8_sourceCombination_row262]
  unfold tropicalOverlapSourceCombination8Row262
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row262,
    tropicalOverlapSourceJExponent8_replay_row262]

end

end MonochromaticQuantumGraphs.N8D3
