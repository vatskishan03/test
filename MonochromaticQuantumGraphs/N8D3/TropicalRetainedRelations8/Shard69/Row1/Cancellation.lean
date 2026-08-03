import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 346. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row346 :
    tropicalOverlapRelation8Row346 =
      tropicalOverlapSourceCombination8Row346 := by
  simp [tropicalOverlapRelation8Row346,
    tropicalOverlapSourceCombination8Row346,
    tropicalOverlapProvenance8Row346,
    tropicalOverlapSourceIExponent8Row346,
    tropicalOverlapSourceJExponent8Row346, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
