import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 193. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row193 :
    tropicalOverlapRelation8Row193 =
      tropicalOverlapSourceCombination8Row193 := by
  simp [tropicalOverlapRelation8Row193,
    tropicalOverlapSourceCombination8Row193,
    tropicalOverlapProvenance8Row193,
    tropicalOverlapSourceIExponent8Row193,
    tropicalOverlapSourceJExponent8Row193, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
