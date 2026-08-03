import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 282. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 282. -/
theorem tropicalOverlapRelation8_provenance_row282 :
    tropicalOverlapRelation8Row282 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row282 := by
  rw [tropicalOverlapRelation8_sourceCombination_row282]
  unfold tropicalOverlapSourceCombination8Row282
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row282,
    tropicalOverlapSourceJExponent8_replay_row282]

end

end MonochromaticQuantumGraphs.N8D3
