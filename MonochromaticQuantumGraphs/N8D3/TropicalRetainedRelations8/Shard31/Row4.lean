import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row4.SourceI
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row4.SourceJ
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row4.Cancellation

/-! Assembly of the staged kernel replay for first-overlap row 159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 159. -/
theorem tropicalOverlapRelation8_provenance_row159 :
    tropicalOverlapRelation8Row159 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row159 := by
  rw [tropicalOverlapRelation8_sourceCombination_row159]
  unfold tropicalOverlapSourceCombination8Row159
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row159,
    tropicalOverlapSourceJExponent8_replay_row159]

end

end MonochromaticQuantumGraphs.N8D3
