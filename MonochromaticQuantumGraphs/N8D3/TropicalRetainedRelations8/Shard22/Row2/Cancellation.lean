import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 112. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row112 :
    tropicalOverlapRelation8Row112 =
      tropicalOverlapSourceCombination8Row112 := by
  simp [tropicalOverlapRelation8Row112,
    tropicalOverlapSourceCombination8Row112,
    tropicalOverlapProvenance8Row112,
    tropicalOverlapSourceIExponent8Row112,
    tropicalOverlapSourceJExponent8Row112, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
