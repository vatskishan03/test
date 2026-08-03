import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 240. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row240 :
    tropicalOverlapRelation8Row240 =
      tropicalOverlapSourceCombination8Row240 := by
  simp [tropicalOverlapRelation8Row240,
    tropicalOverlapSourceCombination8Row240,
    tropicalOverlapProvenance8Row240,
    tropicalOverlapSourceIExponent8Row240,
    tropicalOverlapSourceJExponent8Row240, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
