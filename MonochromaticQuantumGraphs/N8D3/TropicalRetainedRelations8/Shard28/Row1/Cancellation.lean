import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 141. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row141 :
    tropicalOverlapRelation8Row141 =
      tropicalOverlapSourceCombination8Row141 := by
  simp [tropicalOverlapRelation8Row141,
    tropicalOverlapSourceCombination8Row141,
    tropicalOverlapProvenance8Row141,
    tropicalOverlapSourceIExponent8Row141,
    tropicalOverlapSourceJExponent8Row141, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
