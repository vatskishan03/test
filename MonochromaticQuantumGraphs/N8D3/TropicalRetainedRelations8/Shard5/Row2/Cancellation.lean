import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 27. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row27 :
    tropicalOverlapRelation8Row27 =
      tropicalOverlapSourceCombination8Row27 := by
  simp [tropicalOverlapRelation8Row27,
    tropicalOverlapSourceCombination8Row27,
    tropicalOverlapProvenance8Row27,
    tropicalOverlapSourceIExponent8Row27,
    tropicalOverlapSourceJExponent8Row27, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
