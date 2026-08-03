import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 327. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row327 :
    tropicalOverlapRelation8Row327 =
      tropicalOverlapSourceCombination8Row327 := by
  simp [tropicalOverlapRelation8Row327,
    tropicalOverlapSourceCombination8Row327,
    tropicalOverlapProvenance8Row327,
    tropicalOverlapSourceIExponent8Row327,
    tropicalOverlapSourceJExponent8Row327, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
