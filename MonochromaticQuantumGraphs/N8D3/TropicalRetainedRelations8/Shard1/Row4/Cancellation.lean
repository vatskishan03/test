import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 9. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row9 :
    tropicalOverlapRelation8Row9 =
      tropicalOverlapSourceCombination8Row9 := by
  simp [tropicalOverlapRelation8Row9,
    tropicalOverlapSourceCombination8Row9,
    tropicalOverlapProvenance8Row9,
    tropicalOverlapSourceIExponent8Row9,
    tropicalOverlapSourceJExponent8Row9, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
