import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 194. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row194 :
    tropicalOverlapRelation8Row194 =
      tropicalOverlapSourceCombination8Row194 := by
  simp [tropicalOverlapRelation8Row194,
    tropicalOverlapSourceCombination8Row194,
    tropicalOverlapProvenance8Row194,
    tropicalOverlapSourceIExponent8Row194,
    tropicalOverlapSourceJExponent8Row194, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
