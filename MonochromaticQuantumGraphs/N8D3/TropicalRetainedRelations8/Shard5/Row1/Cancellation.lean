import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 26. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row26 :
    tropicalOverlapRelation8Row26 =
      tropicalOverlapSourceCombination8Row26 := by
  simp [tropicalOverlapRelation8Row26,
    tropicalOverlapSourceCombination8Row26,
    tropicalOverlapProvenance8Row26,
    tropicalOverlapSourceIExponent8Row26,
    tropicalOverlapSourceJExponent8Row26, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
