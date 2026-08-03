import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 56. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row56 :
    tropicalOverlapRelation8Row56 =
      tropicalOverlapSourceCombination8Row56 := by
  simp [tropicalOverlapRelation8Row56,
    tropicalOverlapSourceCombination8Row56,
    tropicalOverlapProvenance8Row56,
    tropicalOverlapSourceIExponent8Row56,
    tropicalOverlapSourceJExponent8Row56, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
