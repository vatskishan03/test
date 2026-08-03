import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 172. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row172 :
    tropicalOverlapRelation8Row172 =
      tropicalOverlapSourceCombination8Row172 := by
  simp [tropicalOverlapRelation8Row172,
    tropicalOverlapSourceCombination8Row172,
    tropicalOverlapProvenance8Row172,
    tropicalOverlapSourceIExponent8Row172,
    tropicalOverlapSourceJExponent8Row172, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
