import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 84. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row84 :
    tropicalOverlapRelation8Row84 =
      tropicalOverlapSourceCombination8Row84 := by
  simp [tropicalOverlapRelation8Row84,
    tropicalOverlapSourceCombination8Row84,
    tropicalOverlapProvenance8Row84,
    tropicalOverlapSourceIExponent8Row84,
    tropicalOverlapSourceJExponent8Row84, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
