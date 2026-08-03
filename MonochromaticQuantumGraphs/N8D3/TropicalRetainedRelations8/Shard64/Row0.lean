import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row0.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row0.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row0.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 320. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 320. -/
theorem tropicalOverlapRelation8_provenance_row320 :
    tropicalOverlapRelation8Row320 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row320 := by
  rw [tropicalOverlapRelation8_sourceCombination_row320]
  unfold tropicalOverlapSourceCombination8Row320
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row320,
    tropicalOverlapSourceJExponent8_replay_row320]

end

end MonochromaticQuantumGraphs.N8D3
