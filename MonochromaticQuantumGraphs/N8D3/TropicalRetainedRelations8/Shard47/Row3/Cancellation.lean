import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 238. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row238 :
    tropicalOverlapRelation8Row238 =
      tropicalOverlapSourceCombination8Row238 := by
  simp [tropicalOverlapRelation8Row238,
    tropicalOverlapSourceCombination8Row238,
    tropicalOverlapProvenance8Row238,
    tropicalOverlapSourceIExponent8Row238,
    tropicalOverlapSourceJExponent8Row238, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
