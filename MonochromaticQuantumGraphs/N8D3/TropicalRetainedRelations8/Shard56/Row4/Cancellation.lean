import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row284 :
    tropicalOverlapRelation8Row284 =
      tropicalOverlapSourceCombination8Row284 := by
  simp [tropicalOverlapRelation8Row284,
    tropicalOverlapSourceCombination8Row284,
    tropicalOverlapProvenance8Row284,
    tropicalOverlapSourceIExponent8Row284,
    tropicalOverlapSourceJExponent8Row284, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
