import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 208. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row208 :
    tropicalOverlapRelation8Row208 =
      tropicalOverlapSourceCombination8Row208 := by
  simp [tropicalOverlapRelation8Row208,
    tropicalOverlapSourceCombination8Row208,
    tropicalOverlapProvenance8Row208,
    tropicalOverlapSourceIExponent8Row208,
    tropicalOverlapSourceJExponent8Row208, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
