import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 210. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row210 :
    tropicalOverlapRelation8Row210 =
      tropicalOverlapSourceCombination8Row210 := by
  simp [tropicalOverlapRelation8Row210,
    tropicalOverlapSourceCombination8Row210,
    tropicalOverlapProvenance8Row210,
    tropicalOverlapSourceIExponent8Row210,
    tropicalOverlapSourceJExponent8Row210, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
