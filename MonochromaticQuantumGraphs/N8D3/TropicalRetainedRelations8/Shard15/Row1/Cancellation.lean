import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 76. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row76 :
    tropicalOverlapRelation8Row76 =
      tropicalOverlapSourceCombination8Row76 := by
  simp [tropicalOverlapRelation8Row76,
    tropicalOverlapSourceCombination8Row76,
    tropicalOverlapProvenance8Row76,
    tropicalOverlapSourceIExponent8Row76,
    tropicalOverlapSourceJExponent8Row76, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
