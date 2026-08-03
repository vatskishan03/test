import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 37. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row37 :
    tropicalOverlapRelation8Row37 =
      tropicalOverlapSourceCombination8Row37 := by
  simp [tropicalOverlapRelation8Row37,
    tropicalOverlapSourceCombination8Row37,
    tropicalOverlapProvenance8Row37,
    tropicalOverlapSourceIExponent8Row37,
    tropicalOverlapSourceJExponent8Row37, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
