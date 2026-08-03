import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 285. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row285 :
    tropicalOverlapRelation8Row285 =
      tropicalOverlapSourceCombination8Row285 := by
  simp [tropicalOverlapRelation8Row285,
    tropicalOverlapSourceCombination8Row285,
    tropicalOverlapProvenance8Row285,
    tropicalOverlapSourceIExponent8Row285,
    tropicalOverlapSourceJExponent8Row285, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
