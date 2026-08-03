import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 358. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row358 :
    tropicalOverlapRelation8Row358 =
      tropicalOverlapSourceCombination8Row358 := by
  simp [tropicalOverlapRelation8Row358,
    tropicalOverlapSourceCombination8Row358,
    tropicalOverlapProvenance8Row358,
    tropicalOverlapSourceIExponent8Row358,
    tropicalOverlapSourceJExponent8Row358, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
