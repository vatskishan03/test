import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 114. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row114 :
    tropicalOverlapRelation8Row114 =
      tropicalOverlapSourceCombination8Row114 := by
  simp [tropicalOverlapRelation8Row114,
    tropicalOverlapSourceCombination8Row114,
    tropicalOverlapProvenance8Row114,
    tropicalOverlapSourceIExponent8Row114,
    tropicalOverlapSourceJExponent8Row114, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
