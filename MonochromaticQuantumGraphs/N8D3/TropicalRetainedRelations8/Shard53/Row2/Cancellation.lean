import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 267. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row267 :
    tropicalOverlapRelation8Row267 =
      tropicalOverlapSourceCombination8Row267 := by
  simp [tropicalOverlapRelation8Row267,
    tropicalOverlapSourceCombination8Row267,
    tropicalOverlapProvenance8Row267,
    tropicalOverlapSourceIExponent8Row267,
    tropicalOverlapSourceJExponent8Row267, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
