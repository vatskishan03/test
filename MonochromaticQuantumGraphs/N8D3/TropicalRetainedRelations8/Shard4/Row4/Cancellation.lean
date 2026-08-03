import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 24. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row24 :
    tropicalOverlapRelation8Row24 =
      tropicalOverlapSourceCombination8Row24 := by
  simp [tropicalOverlapRelation8Row24,
    tropicalOverlapSourceCombination8Row24,
    tropicalOverlapProvenance8Row24,
    tropicalOverlapSourceIExponent8Row24,
    tropicalOverlapSourceJExponent8Row24, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
