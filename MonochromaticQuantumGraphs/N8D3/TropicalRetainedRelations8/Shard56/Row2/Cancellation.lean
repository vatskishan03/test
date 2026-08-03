import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 282. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row282 :
    tropicalOverlapRelation8Row282 =
      tropicalOverlapSourceCombination8Row282 := by
  simp [tropicalOverlapRelation8Row282,
    tropicalOverlapSourceCombination8Row282,
    tropicalOverlapProvenance8Row282,
    tropicalOverlapSourceIExponent8Row282,
    tropicalOverlapSourceJExponent8Row282, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
