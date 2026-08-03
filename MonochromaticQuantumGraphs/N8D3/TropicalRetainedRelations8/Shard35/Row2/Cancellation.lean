import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 177. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row177 :
    tropicalOverlapRelation8Row177 =
      tropicalOverlapSourceCombination8Row177 := by
  simp [tropicalOverlapRelation8Row177,
    tropicalOverlapSourceCombination8Row177,
    tropicalOverlapProvenance8Row177,
    tropicalOverlapSourceIExponent8Row177,
    tropicalOverlapSourceJExponent8Row177, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
