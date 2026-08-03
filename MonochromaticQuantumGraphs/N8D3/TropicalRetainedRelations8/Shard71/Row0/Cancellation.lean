import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 355. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row355 :
    tropicalOverlapRelation8Row355 =
      tropicalOverlapSourceCombination8Row355 := by
  simp [tropicalOverlapRelation8Row355,
    tropicalOverlapSourceCombination8Row355,
    tropicalOverlapProvenance8Row355,
    tropicalOverlapSourceIExponent8Row355,
    tropicalOverlapSourceJExponent8Row355, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
