import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row297 :
    tropicalOverlapRelation8Row297 =
      tropicalOverlapSourceCombination8Row297 := by
  simp [tropicalOverlapRelation8Row297,
    tropicalOverlapSourceCombination8Row297,
    tropicalOverlapProvenance8Row297,
    tropicalOverlapSourceIExponent8Row297,
    tropicalOverlapSourceJExponent8Row297, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
