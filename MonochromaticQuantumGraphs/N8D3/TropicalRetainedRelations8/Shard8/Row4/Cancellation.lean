import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row44 :
    tropicalOverlapRelation8Row44 =
      tropicalOverlapSourceCombination8Row44 := by
  simp [tropicalOverlapRelation8Row44,
    tropicalOverlapSourceCombination8Row44,
    tropicalOverlapProvenance8Row44,
    tropicalOverlapSourceIExponent8Row44,
    tropicalOverlapSourceJExponent8Row44, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
