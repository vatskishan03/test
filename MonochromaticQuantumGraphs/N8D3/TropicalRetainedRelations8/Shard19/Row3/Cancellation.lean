import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 98. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row98 :
    tropicalOverlapRelation8Row98 =
      tropicalOverlapSourceCombination8Row98 := by
  simp [tropicalOverlapRelation8Row98,
    tropicalOverlapSourceCombination8Row98,
    tropicalOverlapProvenance8Row98,
    tropicalOverlapSourceIExponent8Row98,
    tropicalOverlapSourceJExponent8Row98, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
