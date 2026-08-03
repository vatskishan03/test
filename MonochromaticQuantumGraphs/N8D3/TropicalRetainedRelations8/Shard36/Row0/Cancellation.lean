import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 180. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row180 :
    tropicalOverlapRelation8Row180 =
      tropicalOverlapSourceCombination8Row180 := by
  simp [tropicalOverlapRelation8Row180,
    tropicalOverlapSourceCombination8Row180,
    tropicalOverlapProvenance8Row180,
    tropicalOverlapSourceIExponent8Row180,
    tropicalOverlapSourceJExponent8Row180, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
