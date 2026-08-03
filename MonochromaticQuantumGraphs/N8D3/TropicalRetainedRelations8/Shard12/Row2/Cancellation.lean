import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 62. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row62 :
    tropicalOverlapRelation8Row62 =
      tropicalOverlapSourceCombination8Row62 := by
  simp [tropicalOverlapRelation8Row62,
    tropicalOverlapSourceCombination8Row62,
    tropicalOverlapProvenance8Row62,
    tropicalOverlapSourceIExponent8Row62,
    tropicalOverlapSourceJExponent8Row62, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
