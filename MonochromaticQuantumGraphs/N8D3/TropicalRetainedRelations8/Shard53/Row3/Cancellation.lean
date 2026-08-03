import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 268. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row268 :
    tropicalOverlapRelation8Row268 =
      tropicalOverlapSourceCombination8Row268 := by
  simp [tropicalOverlapRelation8Row268,
    tropicalOverlapSourceCombination8Row268,
    tropicalOverlapProvenance8Row268,
    tropicalOverlapSourceIExponent8Row268,
    tropicalOverlapSourceJExponent8Row268, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
