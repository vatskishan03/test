import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 36. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row36 :
    tropicalOverlapRelation8Row36 =
      tropicalOverlapSourceCombination8Row36 := by
  simp [tropicalOverlapRelation8Row36,
    tropicalOverlapSourceCombination8Row36,
    tropicalOverlapProvenance8Row36,
    tropicalOverlapSourceIExponent8Row36,
    tropicalOverlapSourceJExponent8Row36, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
