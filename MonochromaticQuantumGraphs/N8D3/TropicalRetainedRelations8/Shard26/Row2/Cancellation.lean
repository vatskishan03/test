import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 132. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row132 :
    tropicalOverlapRelation8Row132 =
      tropicalOverlapSourceCombination8Row132 := by
  simp [tropicalOverlapRelation8Row132,
    tropicalOverlapSourceCombination8Row132,
    tropicalOverlapProvenance8Row132,
    tropicalOverlapSourceIExponent8Row132,
    tropicalOverlapSourceJExponent8Row132, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
