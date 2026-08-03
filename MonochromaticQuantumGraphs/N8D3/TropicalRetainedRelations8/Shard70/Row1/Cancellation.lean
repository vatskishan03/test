import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 351. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row351 :
    tropicalOverlapRelation8Row351 =
      tropicalOverlapSourceCombination8Row351 := by
  simp [tropicalOverlapRelation8Row351,
    tropicalOverlapSourceCombination8Row351,
    tropicalOverlapProvenance8Row351,
    tropicalOverlapSourceIExponent8Row351,
    tropicalOverlapSourceJExponent8Row351, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
