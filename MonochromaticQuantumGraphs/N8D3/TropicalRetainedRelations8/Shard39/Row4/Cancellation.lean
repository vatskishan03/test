import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row199 :
    tropicalOverlapRelation8Row199 =
      tropicalOverlapSourceCombination8Row199 := by
  simp [tropicalOverlapRelation8Row199,
    tropicalOverlapSourceCombination8Row199,
    tropicalOverlapProvenance8Row199,
    tropicalOverlapSourceIExponent8Row199,
    tropicalOverlapSourceJExponent8Row199, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
