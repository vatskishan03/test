import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 71. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row71 :
    tropicalOverlapRelation8Row71 =
      tropicalOverlapSourceCombination8Row71 := by
  simp [tropicalOverlapRelation8Row71,
    tropicalOverlapSourceCombination8Row71,
    tropicalOverlapProvenance8Row71,
    tropicalOverlapSourceIExponent8Row71,
    tropicalOverlapSourceJExponent8Row71, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
