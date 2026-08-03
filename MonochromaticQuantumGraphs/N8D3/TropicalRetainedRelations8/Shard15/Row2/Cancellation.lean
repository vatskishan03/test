import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 77. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row77 :
    tropicalOverlapRelation8Row77 =
      tropicalOverlapSourceCombination8Row77 := by
  simp [tropicalOverlapRelation8Row77,
    tropicalOverlapSourceCombination8Row77,
    tropicalOverlapProvenance8Row77,
    tropicalOverlapSourceIExponent8Row77,
    tropicalOverlapSourceJExponent8Row77, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
