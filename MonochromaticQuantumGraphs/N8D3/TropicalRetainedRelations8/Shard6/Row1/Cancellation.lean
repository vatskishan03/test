import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 31. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row31 :
    tropicalOverlapRelation8Row31 =
      tropicalOverlapSourceCombination8Row31 := by
  simp [tropicalOverlapRelation8Row31,
    tropicalOverlapSourceCombination8Row31,
    tropicalOverlapProvenance8Row31,
    tropicalOverlapSourceIExponent8Row31,
    tropicalOverlapSourceJExponent8Row31, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
