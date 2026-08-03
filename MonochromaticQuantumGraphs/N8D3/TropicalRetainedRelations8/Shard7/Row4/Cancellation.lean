import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row39 :
    tropicalOverlapRelation8Row39 =
      tropicalOverlapSourceCombination8Row39 := by
  simp [tropicalOverlapRelation8Row39,
    tropicalOverlapSourceCombination8Row39,
    tropicalOverlapProvenance8Row39,
    tropicalOverlapSourceIExponent8Row39,
    tropicalOverlapSourceJExponent8Row39, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
