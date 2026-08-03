import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row289 :
    tropicalOverlapRelation8Row289 =
      tropicalOverlapSourceCombination8Row289 := by
  simp [tropicalOverlapRelation8Row289,
    tropicalOverlapSourceCombination8Row289,
    tropicalOverlapProvenance8Row289,
    tropicalOverlapSourceIExponent8Row289,
    tropicalOverlapSourceJExponent8Row289, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
