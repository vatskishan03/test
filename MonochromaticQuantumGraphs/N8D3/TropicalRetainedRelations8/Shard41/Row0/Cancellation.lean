import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 205. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row205 :
    tropicalOverlapRelation8Row205 =
      tropicalOverlapSourceCombination8Row205 := by
  simp [tropicalOverlapRelation8Row205,
    tropicalOverlapSourceCombination8Row205,
    tropicalOverlapProvenance8Row205,
    tropicalOverlapSourceIExponent8Row205,
    tropicalOverlapSourceJExponent8Row205, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
