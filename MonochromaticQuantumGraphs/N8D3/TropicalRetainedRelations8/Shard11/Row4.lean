import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 59. -/
theorem tropicalOverlapRelation8_provenance_row59 :
    tropicalOverlapRelation8Row59 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row59 := by
  rw [tropicalOverlapRelation8_sourceCombination_row59]
  unfold tropicalOverlapSourceCombination8Row59
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row59,
    tropicalOverlapSourceJExponent8_replay_row59]

end

end MonochromaticQuantumGraphs.N8D3
