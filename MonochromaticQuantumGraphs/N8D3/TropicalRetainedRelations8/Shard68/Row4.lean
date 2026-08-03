import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 344. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 344. -/
theorem tropicalOverlapRelation8_provenance_row344 :
    tropicalOverlapRelation8Row344 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row344 := by
  rw [tropicalOverlapRelation8_sourceCombination_row344]
  unfold tropicalOverlapSourceCombination8Row344
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row344,
    tropicalOverlapSourceJExponent8_replay_row344]

end

end MonochromaticQuantumGraphs.N8D3
