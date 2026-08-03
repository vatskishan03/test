import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 20. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row20 :
    tropicalOverlapRelation8Row20 =
      tropicalOverlapSourceCombination8Row20 := by
  simp [tropicalOverlapRelation8Row20,
    tropicalOverlapSourceCombination8Row20,
    tropicalOverlapProvenance8Row20,
    tropicalOverlapSourceIExponent8Row20,
    tropicalOverlapSourceJExponent8Row20, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
