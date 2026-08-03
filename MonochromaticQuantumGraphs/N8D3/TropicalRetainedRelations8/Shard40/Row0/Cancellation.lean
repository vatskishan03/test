import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 200. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row200 :
    tropicalOverlapRelation8Row200 =
      tropicalOverlapSourceCombination8Row200 := by
  simp [tropicalOverlapRelation8Row200,
    tropicalOverlapSourceCombination8Row200,
    tropicalOverlapProvenance8Row200,
    tropicalOverlapSourceIExponent8Row200,
    tropicalOverlapSourceJExponent8Row200, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
