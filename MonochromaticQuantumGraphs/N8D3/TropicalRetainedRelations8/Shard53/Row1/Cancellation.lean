import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 266. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row266 :
    tropicalOverlapRelation8Row266 =
      tropicalOverlapSourceCombination8Row266 := by
  simp [tropicalOverlapRelation8Row266,
    tropicalOverlapSourceCombination8Row266,
    tropicalOverlapProvenance8Row266,
    tropicalOverlapSourceIExponent8Row266,
    tropicalOverlapSourceJExponent8Row266, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
