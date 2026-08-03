import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 127. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row127 :
    tropicalOverlapRelation8Row127 =
      tropicalOverlapSourceCombination8Row127 := by
  simp [tropicalOverlapRelation8Row127,
    tropicalOverlapSourceCombination8Row127,
    tropicalOverlapProvenance8Row127,
    tropicalOverlapSourceIExponent8Row127,
    tropicalOverlapSourceJExponent8Row127, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
