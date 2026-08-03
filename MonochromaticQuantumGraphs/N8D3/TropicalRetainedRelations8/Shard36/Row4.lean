import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 184. -/
theorem tropicalOverlapRelation8_provenance_row184 :
    tropicalOverlapRelation8Row184 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row184 := by
  rw [tropicalOverlapRelation8_sourceCombination_row184]
  unfold tropicalOverlapSourceCombination8Row184
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row184,
    tropicalOverlapSourceJExponent8_replay_row184]

end

end MonochromaticQuantumGraphs.N8D3
