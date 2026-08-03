import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 295. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row295 :
    tropicalOverlapRelation8Row295 =
      tropicalOverlapSourceCombination8Row295 := by
  simp [tropicalOverlapRelation8Row295,
    tropicalOverlapSourceCombination8Row295,
    tropicalOverlapProvenance8Row295,
    tropicalOverlapSourceIExponent8Row295,
    tropicalOverlapSourceJExponent8Row295, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
