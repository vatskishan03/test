import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 165. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row165 :
    tropicalOverlapRelation8Row165 =
      tropicalOverlapSourceCombination8Row165 := by
  simp [tropicalOverlapRelation8Row165,
    tropicalOverlapSourceCombination8Row165,
    tropicalOverlapProvenance8Row165,
    tropicalOverlapSourceIExponent8Row165,
    tropicalOverlapSourceJExponent8Row165, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
