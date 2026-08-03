import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 251. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row251 :
    tropicalOverlapRelation8Row251 =
      tropicalOverlapSourceCombination8Row251 := by
  simp [tropicalOverlapRelation8Row251,
    tropicalOverlapSourceCombination8Row251,
    tropicalOverlapProvenance8Row251,
    tropicalOverlapSourceIExponent8Row251,
    tropicalOverlapSourceJExponent8Row251, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
