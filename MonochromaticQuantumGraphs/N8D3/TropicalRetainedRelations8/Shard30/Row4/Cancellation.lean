import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row154 :
    tropicalOverlapRelation8Row154 =
      tropicalOverlapSourceCombination8Row154 := by
  simp [tropicalOverlapRelation8Row154,
    tropicalOverlapSourceCombination8Row154,
    tropicalOverlapProvenance8Row154,
    tropicalOverlapSourceIExponent8Row154,
    tropicalOverlapSourceJExponent8Row154, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
