import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 155. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row155 :
    tropicalOverlapRelation8Row155 =
      tropicalOverlapSourceCombination8Row155 := by
  simp [tropicalOverlapRelation8Row155,
    tropicalOverlapSourceCombination8Row155,
    tropicalOverlapProvenance8Row155,
    tropicalOverlapSourceIExponent8Row155,
    tropicalOverlapSourceJExponent8Row155, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
