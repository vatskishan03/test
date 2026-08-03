import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 338. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row338 :
    tropicalOverlapRelation8Row338 =
      tropicalOverlapSourceCombination8Row338 := by
  simp [tropicalOverlapRelation8Row338,
    tropicalOverlapSourceCombination8Row338,
    tropicalOverlapProvenance8Row338,
    tropicalOverlapSourceIExponent8Row338,
    tropicalOverlapSourceJExponent8Row338, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
