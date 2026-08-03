import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 265. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row265 :
    tropicalOverlapRelation8Row265 =
      tropicalOverlapSourceCombination8Row265 := by
  simp [tropicalOverlapRelation8Row265,
    tropicalOverlapSourceCombination8Row265,
    tropicalOverlapProvenance8Row265,
    tropicalOverlapSourceIExponent8Row265,
    tropicalOverlapSourceJExponent8Row265, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
