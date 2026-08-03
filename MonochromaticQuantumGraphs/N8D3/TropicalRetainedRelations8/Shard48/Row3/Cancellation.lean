import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 243. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row243 :
    tropicalOverlapRelation8Row243 =
      tropicalOverlapSourceCombination8Row243 := by
  simp [tropicalOverlapRelation8Row243,
    tropicalOverlapSourceCombination8Row243,
    tropicalOverlapProvenance8Row243,
    tropicalOverlapSourceIExponent8Row243,
    tropicalOverlapSourceJExponent8Row243, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
