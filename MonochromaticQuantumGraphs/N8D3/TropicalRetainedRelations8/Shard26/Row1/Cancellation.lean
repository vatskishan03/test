import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 131. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row131 :
    tropicalOverlapRelation8Row131 =
      tropicalOverlapSourceCombination8Row131 := by
  simp [tropicalOverlapRelation8Row131,
    tropicalOverlapSourceCombination8Row131,
    tropicalOverlapProvenance8Row131,
    tropicalOverlapSourceIExponent8Row131,
    tropicalOverlapSourceJExponent8Row131, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
