import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 8. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row8 :
    tropicalOverlapRelation8Row8 =
      tropicalOverlapSourceCombination8Row8 := by
  simp [tropicalOverlapRelation8Row8,
    tropicalOverlapSourceCombination8Row8,
    tropicalOverlapProvenance8Row8,
    tropicalOverlapSourceIExponent8Row8,
    tropicalOverlapSourceJExponent8Row8, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
