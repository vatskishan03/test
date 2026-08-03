import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 70. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row70 :
    tropicalOverlapRelation8Row70 =
      tropicalOverlapSourceCombination8Row70 := by
  simp [tropicalOverlapRelation8Row70,
    tropicalOverlapSourceCombination8Row70,
    tropicalOverlapProvenance8Row70,
    tropicalOverlapSourceIExponent8Row70,
    tropicalOverlapSourceJExponent8Row70, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
