import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row54 :
    tropicalOverlapRelation8Row54 =
      tropicalOverlapSourceCombination8Row54 := by
  simp [tropicalOverlapRelation8Row54,
    tropicalOverlapSourceCombination8Row54,
    tropicalOverlapProvenance8Row54,
    tropicalOverlapSourceIExponent8Row54,
    tropicalOverlapSourceJExponent8Row54, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
