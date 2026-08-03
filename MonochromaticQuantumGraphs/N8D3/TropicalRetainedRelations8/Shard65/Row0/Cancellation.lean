import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 325. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row325 :
    tropicalOverlapRelation8Row325 =
      tropicalOverlapSourceCombination8Row325 := by
  simp [tropicalOverlapRelation8Row325,
    tropicalOverlapSourceCombination8Row325,
    tropicalOverlapProvenance8Row325,
    tropicalOverlapSourceIExponent8Row325,
    tropicalOverlapSourceJExponent8Row325, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
