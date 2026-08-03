import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 108. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row108 :
    tropicalOverlapRelation8Row108 =
      tropicalOverlapSourceCombination8Row108 := by
  simp [tropicalOverlapRelation8Row108,
    tropicalOverlapSourceCombination8Row108,
    tropicalOverlapProvenance8Row108,
    tropicalOverlapSourceIExponent8Row108,
    tropicalOverlapSourceJExponent8Row108, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
