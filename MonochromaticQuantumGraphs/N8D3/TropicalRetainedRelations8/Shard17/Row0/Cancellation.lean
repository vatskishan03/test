import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 85. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row85 :
    tropicalOverlapRelation8Row85 =
      tropicalOverlapSourceCombination8Row85 := by
  simp [tropicalOverlapRelation8Row85,
    tropicalOverlapSourceCombination8Row85,
    tropicalOverlapProvenance8Row85,
    tropicalOverlapSourceIExponent8Row85,
    tropicalOverlapSourceJExponent8Row85, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
