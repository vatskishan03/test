import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 306. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row306 :
    tropicalOverlapRelation8Row306 =
      tropicalOverlapSourceCombination8Row306 := by
  simp [tropicalOverlapRelation8Row306,
    tropicalOverlapSourceCombination8Row306,
    tropicalOverlapProvenance8Row306,
    tropicalOverlapSourceIExponent8Row306,
    tropicalOverlapSourceJExponent8Row306, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
