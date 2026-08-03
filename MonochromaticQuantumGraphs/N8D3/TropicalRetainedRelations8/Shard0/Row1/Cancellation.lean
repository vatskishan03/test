import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 1. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row1 :
    tropicalOverlapRelation8Row1 =
      tropicalOverlapSourceCombination8Row1 := by
  simp [tropicalOverlapRelation8Row1,
    tropicalOverlapSourceCombination8Row1,
    tropicalOverlapProvenance8Row1,
    tropicalOverlapSourceIExponent8Row1,
    tropicalOverlapSourceJExponent8Row1, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
