import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 326. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 326. -/
theorem tropicalOverlapRelation8_provenance_row326 :
    tropicalOverlapRelation8Row326 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row326 := by
  rw [tropicalOverlapRelation8_sourceCombination_row326]
  unfold tropicalOverlapSourceCombination8Row326
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row326,
    tropicalOverlapSourceJExponent8_replay_row326]

end

end MonochromaticQuantumGraphs.N8D3
