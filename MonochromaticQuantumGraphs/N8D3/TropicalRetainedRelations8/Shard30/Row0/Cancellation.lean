import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 150. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row150 :
    tropicalOverlapRelation8Row150 =
      tropicalOverlapSourceCombination8Row150 := by
  simp [tropicalOverlapRelation8Row150,
    tropicalOverlapSourceCombination8Row150,
    tropicalOverlapProvenance8Row150,
    tropicalOverlapSourceIExponent8Row150,
    tropicalOverlapSourceJExponent8Row150, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
