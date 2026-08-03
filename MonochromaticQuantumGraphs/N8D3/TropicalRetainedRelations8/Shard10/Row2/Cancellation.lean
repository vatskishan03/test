import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 52. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row52 :
    tropicalOverlapRelation8Row52 =
      tropicalOverlapSourceCombination8Row52 := by
  simp [tropicalOverlapRelation8Row52,
    tropicalOverlapSourceCombination8Row52,
    tropicalOverlapProvenance8Row52,
    tropicalOverlapSourceIExponent8Row52,
    tropicalOverlapSourceJExponent8Row52, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
