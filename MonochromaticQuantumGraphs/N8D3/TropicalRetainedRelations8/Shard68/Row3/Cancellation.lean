import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 343. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row343 :
    tropicalOverlapRelation8Row343 =
      tropicalOverlapSourceCombination8Row343 := by
  simp [tropicalOverlapRelation8Row343,
    tropicalOverlapSourceCombination8Row343,
    tropicalOverlapProvenance8Row343,
    tropicalOverlapSourceIExponent8Row343,
    tropicalOverlapSourceJExponent8Row343, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
