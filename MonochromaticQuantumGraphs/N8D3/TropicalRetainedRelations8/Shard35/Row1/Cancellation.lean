import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 176. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row176 :
    tropicalOverlapRelation8Row176 =
      tropicalOverlapSourceCombination8Row176 := by
  simp [tropicalOverlapRelation8Row176,
    tropicalOverlapSourceCombination8Row176,
    tropicalOverlapProvenance8Row176,
    tropicalOverlapSourceIExponent8Row176,
    tropicalOverlapSourceJExponent8Row176, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
