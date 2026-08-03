import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 89. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row89 :
    tropicalOverlapRelation8Row89 =
      tropicalOverlapSourceCombination8Row89 := by
  simp [tropicalOverlapRelation8Row89,
    tropicalOverlapSourceCombination8Row89,
    tropicalOverlapProvenance8Row89,
    tropicalOverlapSourceIExponent8Row89,
    tropicalOverlapSourceJExponent8Row89, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
