import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 75. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row75 :
    tropicalOverlapRelation8Row75 =
      tropicalOverlapSourceCombination8Row75 := by
  simp [tropicalOverlapRelation8Row75,
    tropicalOverlapSourceCombination8Row75,
    tropicalOverlapProvenance8Row75,
    tropicalOverlapSourceIExponent8Row75,
    tropicalOverlapSourceJExponent8Row75, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
