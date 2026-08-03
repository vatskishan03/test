import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 241. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row241 :
    tropicalOverlapRelation8Row241 =
      tropicalOverlapSourceCombination8Row241 := by
  simp [tropicalOverlapRelation8Row241,
    tropicalOverlapSourceCombination8Row241,
    tropicalOverlapProvenance8Row241,
    tropicalOverlapSourceIExponent8Row241,
    tropicalOverlapSourceJExponent8Row241, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
