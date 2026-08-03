import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 245. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row245 :
    tropicalOverlapRelation8Row245 =
      tropicalOverlapSourceCombination8Row245 := by
  simp [tropicalOverlapRelation8Row245,
    tropicalOverlapSourceCombination8Row245,
    tropicalOverlapProvenance8Row245,
    tropicalOverlapSourceIExponent8Row245,
    tropicalOverlapSourceJExponent8Row245, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
