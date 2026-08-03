import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 273. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row273 :
    tropicalOverlapRelation8Row273 =
      tropicalOverlapSourceCombination8Row273 := by
  simp [tropicalOverlapRelation8Row273,
    tropicalOverlapSourceCombination8Row273,
    tropicalOverlapProvenance8Row273,
    tropicalOverlapSourceIExponent8Row273,
    tropicalOverlapSourceJExponent8Row273, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
