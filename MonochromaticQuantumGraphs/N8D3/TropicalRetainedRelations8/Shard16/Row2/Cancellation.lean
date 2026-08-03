import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 82. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row82 :
    tropicalOverlapRelation8Row82 =
      tropicalOverlapSourceCombination8Row82 := by
  simp [tropicalOverlapRelation8Row82,
    tropicalOverlapSourceCombination8Row82,
    tropicalOverlapProvenance8Row82,
    tropicalOverlapSourceIExponent8Row82,
    tropicalOverlapSourceJExponent8Row82, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
