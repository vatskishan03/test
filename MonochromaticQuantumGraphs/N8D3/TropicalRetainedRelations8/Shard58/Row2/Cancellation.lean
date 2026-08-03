import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 292. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row292 :
    tropicalOverlapRelation8Row292 =
      tropicalOverlapSourceCombination8Row292 := by
  simp [tropicalOverlapRelation8Row292,
    tropicalOverlapSourceCombination8Row292,
    tropicalOverlapProvenance8Row292,
    tropicalOverlapSourceIExponent8Row292,
    tropicalOverlapSourceJExponent8Row292, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
