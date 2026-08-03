import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 331. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row331 :
    tropicalOverlapRelation8Row331 =
      tropicalOverlapSourceCombination8Row331 := by
  simp [tropicalOverlapRelation8Row331,
    tropicalOverlapSourceCombination8Row331,
    tropicalOverlapProvenance8Row331,
    tropicalOverlapSourceIExponent8Row331,
    tropicalOverlapSourceJExponent8Row331, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
