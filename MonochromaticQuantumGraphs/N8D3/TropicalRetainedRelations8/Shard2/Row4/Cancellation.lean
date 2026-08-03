import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 14. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row14 :
    tropicalOverlapRelation8Row14 =
      tropicalOverlapSourceCombination8Row14 := by
  simp [tropicalOverlapRelation8Row14,
    tropicalOverlapSourceCombination8Row14,
    tropicalOverlapProvenance8Row14,
    tropicalOverlapSourceIExponent8Row14,
    tropicalOverlapSourceJExponent8Row14, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
