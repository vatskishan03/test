import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 23. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row23 :
    tropicalOverlapRelation8Row23 =
      tropicalOverlapSourceCombination8Row23 := by
  simp [tropicalOverlapRelation8Row23,
    tropicalOverlapSourceCombination8Row23,
    tropicalOverlapProvenance8Row23,
    tropicalOverlapSourceIExponent8Row23,
    tropicalOverlapSourceJExponent8Row23, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
