import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 322. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row322 :
    tropicalOverlapRelation8Row322 =
      tropicalOverlapSourceCombination8Row322 := by
  simp [tropicalOverlapRelation8Row322,
    tropicalOverlapSourceCombination8Row322,
    tropicalOverlapProvenance8Row322,
    tropicalOverlapSourceIExponent8Row322,
    tropicalOverlapSourceJExponent8Row322, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
