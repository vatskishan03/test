import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 158. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row158 :
    tropicalOverlapRelation8Row158 =
      tropicalOverlapSourceCombination8Row158 := by
  simp [tropicalOverlapRelation8Row158,
    tropicalOverlapSourceCombination8Row158,
    tropicalOverlapProvenance8Row158,
    tropicalOverlapSourceIExponent8Row158,
    tropicalOverlapSourceJExponent8Row158, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
