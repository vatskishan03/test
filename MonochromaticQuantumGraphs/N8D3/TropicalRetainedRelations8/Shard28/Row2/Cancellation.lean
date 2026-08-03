import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 142. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row142 :
    tropicalOverlapRelation8Row142 =
      tropicalOverlapSourceCombination8Row142 := by
  simp [tropicalOverlapRelation8Row142,
    tropicalOverlapSourceCombination8Row142,
    tropicalOverlapProvenance8Row142,
    tropicalOverlapSourceIExponent8Row142,
    tropicalOverlapSourceJExponent8Row142, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
