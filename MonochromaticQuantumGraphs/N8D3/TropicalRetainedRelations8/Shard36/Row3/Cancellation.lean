import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 183. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row183 :
    tropicalOverlapRelation8Row183 =
      tropicalOverlapSourceCombination8Row183 := by
  simp [tropicalOverlapRelation8Row183,
    tropicalOverlapSourceCombination8Row183,
    tropicalOverlapProvenance8Row183,
    tropicalOverlapSourceIExponent8Row183,
    tropicalOverlapSourceJExponent8Row183, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
