import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 324. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row324 :
    tropicalOverlapRelation8Row324 =
      tropicalOverlapSourceCombination8Row324 := by
  simp [tropicalOverlapRelation8Row324,
    tropicalOverlapSourceCombination8Row324,
    tropicalOverlapProvenance8Row324,
    tropicalOverlapSourceIExponent8Row324,
    tropicalOverlapSourceJExponent8Row324, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
