import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 298. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row298 :
    tropicalOverlapRelation8Row298 =
      tropicalOverlapSourceCombination8Row298 := by
  simp [tropicalOverlapRelation8Row298,
    tropicalOverlapSourceCombination8Row298,
    tropicalOverlapProvenance8Row298,
    tropicalOverlapSourceIExponent8Row298,
    tropicalOverlapSourceJExponent8Row298, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
