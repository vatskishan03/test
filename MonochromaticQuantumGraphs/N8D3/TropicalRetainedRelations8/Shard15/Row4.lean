import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 79. -/
theorem tropicalOverlapRelation8_provenance_row79 :
    tropicalOverlapRelation8Row79 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row79 := by
  rw [tropicalOverlapRelation8_sourceCombination_row79]
  unfold tropicalOverlapSourceCombination8Row79
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row79,
    tropicalOverlapSourceJExponent8_replay_row79]

end

end MonochromaticQuantumGraphs.N8D3
