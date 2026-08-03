import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 128. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row128 :
    tropicalOverlapRelation8Row128 =
      tropicalOverlapSourceCombination8Row128 := by
  simp [tropicalOverlapRelation8Row128,
    tropicalOverlapSourceCombination8Row128,
    tropicalOverlapProvenance8Row128,
    tropicalOverlapSourceIExponent8Row128,
    tropicalOverlapSourceJExponent8Row128, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
