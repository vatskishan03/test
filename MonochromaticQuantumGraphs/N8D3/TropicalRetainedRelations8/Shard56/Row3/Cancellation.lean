import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 283. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row283 :
    tropicalOverlapRelation8Row283 =
      tropicalOverlapSourceCombination8Row283 := by
  simp [tropicalOverlapRelation8Row283,
    tropicalOverlapSourceCombination8Row283,
    tropicalOverlapProvenance8Row283,
    tropicalOverlapSourceIExponent8Row283,
    tropicalOverlapSourceJExponent8Row283, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
