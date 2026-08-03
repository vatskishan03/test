import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 35. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row35 :
    tropicalOverlapRelation8Row35 =
      tropicalOverlapSourceCombination8Row35 := by
  simp [tropicalOverlapRelation8Row35,
    tropicalOverlapSourceCombination8Row35,
    tropicalOverlapProvenance8Row35,
    tropicalOverlapSourceIExponent8Row35,
    tropicalOverlapSourceJExponent8Row35, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
