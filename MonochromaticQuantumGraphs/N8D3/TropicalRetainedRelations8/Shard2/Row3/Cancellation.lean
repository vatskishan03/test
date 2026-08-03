import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 13. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row13 :
    tropicalOverlapRelation8Row13 =
      tropicalOverlapSourceCombination8Row13 := by
  simp [tropicalOverlapRelation8Row13,
    tropicalOverlapSourceCombination8Row13,
    tropicalOverlapProvenance8Row13,
    tropicalOverlapSourceIExponent8Row13,
    tropicalOverlapSourceJExponent8Row13, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
