import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 67. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row67 :
    tropicalOverlapRelation8Row67 =
      tropicalOverlapSourceCombination8Row67 := by
  simp [tropicalOverlapRelation8Row67,
    tropicalOverlapSourceCombination8Row67,
    tropicalOverlapProvenance8Row67,
    tropicalOverlapSourceIExponent8Row67,
    tropicalOverlapSourceJExponent8Row67, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
