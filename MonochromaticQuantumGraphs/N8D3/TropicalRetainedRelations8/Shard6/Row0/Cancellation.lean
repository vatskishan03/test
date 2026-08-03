import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 30. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row30 :
    tropicalOverlapRelation8Row30 =
      tropicalOverlapSourceCombination8Row30 := by
  simp [tropicalOverlapRelation8Row30,
    tropicalOverlapSourceCombination8Row30,
    tropicalOverlapProvenance8Row30,
    tropicalOverlapSourceIExponent8Row30,
    tropicalOverlapSourceJExponent8Row30, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
