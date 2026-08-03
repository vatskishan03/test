import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 81. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 81. -/
theorem tropicalOverlapRelation8_provenance_row81 :
    tropicalOverlapRelation8Row81 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row81 := by
  rw [tropicalOverlapRelation8_sourceCombination_row81]
  unfold tropicalOverlapSourceCombination8Row81
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row81,
    tropicalOverlapSourceJExponent8_replay_row81]

end

end MonochromaticQuantumGraphs.N8D3
