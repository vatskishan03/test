import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 2. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row2 :
    tropicalOverlapRelation8Row2 =
      tropicalOverlapSourceCombination8Row2 := by
  simp [tropicalOverlapRelation8Row2,
    tropicalOverlapSourceCombination8Row2,
    tropicalOverlapProvenance8Row2,
    tropicalOverlapSourceIExponent8Row2,
    tropicalOverlapSourceJExponent8Row2, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
