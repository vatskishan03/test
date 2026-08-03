import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 272. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row272 :
    tropicalOverlapRelation8Row272 =
      tropicalOverlapSourceCombination8Row272 := by
  simp [tropicalOverlapRelation8Row272,
    tropicalOverlapSourceCombination8Row272,
    tropicalOverlapProvenance8Row272,
    tropicalOverlapSourceIExponent8Row272,
    tropicalOverlapSourceJExponent8Row272, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
