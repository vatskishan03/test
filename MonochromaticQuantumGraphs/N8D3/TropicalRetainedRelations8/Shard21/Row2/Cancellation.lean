import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 107. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row107 :
    tropicalOverlapRelation8Row107 =
      tropicalOverlapSourceCombination8Row107 := by
  simp [tropicalOverlapRelation8Row107,
    tropicalOverlapSourceCombination8Row107,
    tropicalOverlapProvenance8Row107,
    tropicalOverlapSourceIExponent8Row107,
    tropicalOverlapSourceJExponent8Row107, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
