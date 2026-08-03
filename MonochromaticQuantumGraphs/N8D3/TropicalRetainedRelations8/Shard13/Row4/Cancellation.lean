import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row69 :
    tropicalOverlapRelation8Row69 =
      tropicalOverlapSourceCombination8Row69 := by
  simp [tropicalOverlapRelation8Row69,
    tropicalOverlapSourceCombination8Row69,
    tropicalOverlapProvenance8Row69,
    tropicalOverlapSourceIExponent8Row69,
    tropicalOverlapSourceJExponent8Row69, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
