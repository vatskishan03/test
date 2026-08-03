import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 17. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row17 :
    tropicalOverlapRelation8Row17 =
      tropicalOverlapSourceCombination8Row17 := by
  simp [tropicalOverlapRelation8Row17,
    tropicalOverlapSourceCombination8Row17,
    tropicalOverlapProvenance8Row17,
    tropicalOverlapSourceIExponent8Row17,
    tropicalOverlapSourceJExponent8Row17, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
