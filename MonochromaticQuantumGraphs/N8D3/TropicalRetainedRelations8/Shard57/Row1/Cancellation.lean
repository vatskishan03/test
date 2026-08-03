import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 286. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row286 :
    tropicalOverlapRelation8Row286 =
      tropicalOverlapSourceCombination8Row286 := by
  simp [tropicalOverlapRelation8Row286,
    tropicalOverlapSourceCombination8Row286,
    tropicalOverlapProvenance8Row286,
    tropicalOverlapSourceIExponent8Row286,
    tropicalOverlapSourceJExponent8Row286, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
