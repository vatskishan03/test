import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 88. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row88 :
    tropicalOverlapRelation8Row88 =
      tropicalOverlapSourceCombination8Row88 := by
  simp [tropicalOverlapRelation8Row88,
    tropicalOverlapSourceCombination8Row88,
    tropicalOverlapProvenance8Row88,
    tropicalOverlapSourceIExponent8Row88,
    tropicalOverlapSourceJExponent8Row88, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
