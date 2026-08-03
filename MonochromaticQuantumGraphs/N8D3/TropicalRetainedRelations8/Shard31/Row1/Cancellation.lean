import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 156. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row156 :
    tropicalOverlapRelation8Row156 =
      tropicalOverlapSourceCombination8Row156 := by
  simp [tropicalOverlapRelation8Row156,
    tropicalOverlapSourceCombination8Row156,
    tropicalOverlapProvenance8Row156,
    tropicalOverlapSourceIExponent8Row156,
    tropicalOverlapSourceJExponent8Row156, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
