import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row309 :
    tropicalOverlapRelation8Row309 =
      tropicalOverlapSourceCombination8Row309 := by
  simp [tropicalOverlapRelation8Row309,
    tropicalOverlapSourceCombination8Row309,
    tropicalOverlapProvenance8Row309,
    tropicalOverlapSourceIExponent8Row309,
    tropicalOverlapSourceJExponent8Row309, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
