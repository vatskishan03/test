import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 115. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row115 :
    tropicalOverlapRelation8Row115 =
      tropicalOverlapSourceCombination8Row115 := by
  simp [tropicalOverlapRelation8Row115,
    tropicalOverlapSourceCombination8Row115,
    tropicalOverlapProvenance8Row115,
    tropicalOverlapSourceIExponent8Row115,
    tropicalOverlapSourceJExponent8Row115, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
