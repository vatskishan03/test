import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 278. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row278 :
    tropicalOverlapRelation8Row278 =
      tropicalOverlapSourceCombination8Row278 := by
  simp [tropicalOverlapRelation8Row278,
    tropicalOverlapSourceCombination8Row278,
    tropicalOverlapProvenance8Row278,
    tropicalOverlapSourceIExponent8Row278,
    tropicalOverlapSourceJExponent8Row278, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
