import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row109 :
    tropicalOverlapRelation8Row109 =
      tropicalOverlapSourceCombination8Row109 := by
  simp [tropicalOverlapRelation8Row109,
    tropicalOverlapSourceCombination8Row109,
    tropicalOverlapProvenance8Row109,
    tropicalOverlapSourceIExponent8Row109,
    tropicalOverlapSourceJExponent8Row109, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
