import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 164. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 164. -/
theorem tropicalOverlapRelation8_provenance_row164 :
    tropicalOverlapRelation8Row164 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row164 := by
  rw [tropicalOverlapRelation8_sourceCombination_row164]
  unfold tropicalOverlapSourceCombination8Row164
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row164,
    tropicalOverlapSourceJExponent8_replay_row164]

end

end MonochromaticQuantumGraphs.N8D3
