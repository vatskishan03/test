import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 290. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row290 :
    tropicalOverlapRelation8Row290 =
      tropicalOverlapSourceCombination8Row290 := by
  simp [tropicalOverlapRelation8Row290,
    tropicalOverlapSourceCombination8Row290,
    tropicalOverlapProvenance8Row290,
    tropicalOverlapSourceIExponent8Row290,
    tropicalOverlapSourceJExponent8Row290, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
