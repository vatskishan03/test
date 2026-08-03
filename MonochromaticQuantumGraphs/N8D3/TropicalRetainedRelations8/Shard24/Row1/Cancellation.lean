import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 121. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row121 :
    tropicalOverlapRelation8Row121 =
      tropicalOverlapSourceCombination8Row121 := by
  simp [tropicalOverlapRelation8Row121,
    tropicalOverlapSourceCombination8Row121,
    tropicalOverlapProvenance8Row121,
    tropicalOverlapSourceIExponent8Row121,
    tropicalOverlapSourceJExponent8Row121, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
