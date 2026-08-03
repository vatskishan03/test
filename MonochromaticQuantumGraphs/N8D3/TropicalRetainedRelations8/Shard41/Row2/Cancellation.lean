import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 207. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row207 :
    tropicalOverlapRelation8Row207 =
      tropicalOverlapSourceCombination8Row207 := by
  simp [tropicalOverlapRelation8Row207,
    tropicalOverlapSourceCombination8Row207,
    tropicalOverlapProvenance8Row207,
    tropicalOverlapSourceIExponent8Row207,
    tropicalOverlapSourceJExponent8Row207, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
