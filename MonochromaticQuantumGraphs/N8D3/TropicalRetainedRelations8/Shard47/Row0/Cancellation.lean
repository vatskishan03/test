import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 235. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row235 :
    tropicalOverlapRelation8Row235 =
      tropicalOverlapSourceCombination8Row235 := by
  simp [tropicalOverlapRelation8Row235,
    tropicalOverlapSourceCombination8Row235,
    tropicalOverlapProvenance8Row235,
    tropicalOverlapSourceIExponent8Row235,
    tropicalOverlapSourceJExponent8Row235, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
