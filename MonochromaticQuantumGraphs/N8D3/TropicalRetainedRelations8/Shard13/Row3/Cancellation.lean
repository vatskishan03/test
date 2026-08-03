import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 68. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row68 :
    tropicalOverlapRelation8Row68 =
      tropicalOverlapSourceCombination8Row68 := by
  simp [tropicalOverlapRelation8Row68,
    tropicalOverlapSourceCombination8Row68,
    tropicalOverlapProvenance8Row68,
    tropicalOverlapSourceIExponent8Row68,
    tropicalOverlapSourceJExponent8Row68, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
