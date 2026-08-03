import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 246. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row246 :
    tropicalOverlapRelation8Row246 =
      tropicalOverlapSourceCombination8Row246 := by
  simp [tropicalOverlapRelation8Row246,
    tropicalOverlapSourceCombination8Row246,
    tropicalOverlapProvenance8Row246,
    tropicalOverlapSourceIExponent8Row246,
    tropicalOverlapSourceJExponent8Row246, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
