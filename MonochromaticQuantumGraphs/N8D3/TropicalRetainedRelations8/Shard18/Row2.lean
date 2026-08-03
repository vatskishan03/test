import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row2.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row2.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row2.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 92. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 92. -/
theorem tropicalOverlapRelation8_provenance_row92 :
    tropicalOverlapRelation8Row92 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row92 := by
  rw [tropicalOverlapRelation8_sourceCombination_row92]
  unfold tropicalOverlapSourceCombination8Row92
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row92,
    tropicalOverlapSourceJExponent8_replay_row92]

end

end MonochromaticQuantumGraphs.N8D3
