import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row329 :
    tropicalOverlapRelation8Row329 =
      tropicalOverlapSourceCombination8Row329 := by
  simp [tropicalOverlapRelation8Row329,
    tropicalOverlapSourceCombination8Row329,
    tropicalOverlapProvenance8Row329,
    tropicalOverlapSourceIExponent8Row329,
    tropicalOverlapSourceJExponent8Row329, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
