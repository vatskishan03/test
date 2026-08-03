import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 73. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row73 :
    tropicalOverlapRelation8Row73 =
      tropicalOverlapSourceCombination8Row73 := by
  simp [tropicalOverlapRelation8Row73,
    tropicalOverlapSourceCombination8Row73,
    tropicalOverlapProvenance8Row73,
    tropicalOverlapSourceIExponent8Row73,
    tropicalOverlapSourceJExponent8Row73, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
