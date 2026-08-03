import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 74. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row74 :
    tropicalOverlapRelation8Row74 =
      tropicalOverlapSourceCombination8Row74 := by
  simp [tropicalOverlapRelation8Row74,
    tropicalOverlapSourceCombination8Row74,
    tropicalOverlapProvenance8Row74,
    tropicalOverlapSourceIExponent8Row74,
    tropicalOverlapSourceJExponent8Row74, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
