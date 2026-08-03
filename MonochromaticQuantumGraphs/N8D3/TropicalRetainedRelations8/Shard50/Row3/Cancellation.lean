import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 253. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row253 :
    tropicalOverlapRelation8Row253 =
      tropicalOverlapSourceCombination8Row253 := by
  simp [tropicalOverlapRelation8Row253,
    tropicalOverlapSourceCombination8Row253,
    tropicalOverlapProvenance8Row253,
    tropicalOverlapSourceIExponent8Row253,
    tropicalOverlapSourceJExponent8Row253, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
