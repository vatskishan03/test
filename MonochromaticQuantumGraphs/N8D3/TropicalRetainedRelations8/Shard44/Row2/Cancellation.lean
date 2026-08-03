import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 222. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row222 :
    tropicalOverlapRelation8Row222 =
      tropicalOverlapSourceCombination8Row222 := by
  simp [tropicalOverlapRelation8Row222,
    tropicalOverlapSourceCombination8Row222,
    tropicalOverlapProvenance8Row222,
    tropicalOverlapSourceIExponent8Row222,
    tropicalOverlapSourceJExponent8Row222, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
