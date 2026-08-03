import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 356. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 356. -/
theorem tropicalOverlapRelation8_provenance_row356 :
    tropicalOverlapRelation8Row356 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row356 := by
  rw [tropicalOverlapRelation8_sourceCombination_row356]
  unfold tropicalOverlapSourceCombination8Row356
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row356,
    tropicalOverlapSourceJExponent8_replay_row356]

end

end MonochromaticQuantumGraphs.N8D3
