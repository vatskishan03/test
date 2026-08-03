import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 332. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row332 :
    tropicalOverlapRelation8Row332 =
      tropicalOverlapSourceCombination8Row332 := by
  simp [tropicalOverlapRelation8Row332,
    tropicalOverlapSourceCombination8Row332,
    tropicalOverlapProvenance8Row332,
    tropicalOverlapSourceIExponent8Row332,
    tropicalOverlapSourceJExponent8Row332, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
