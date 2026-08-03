import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 294. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row294 :
    tropicalOverlapRelation8Row294 =
      tropicalOverlapSourceCombination8Row294 := by
  simp [tropicalOverlapRelation8Row294,
    tropicalOverlapSourceCombination8Row294,
    tropicalOverlapProvenance8Row294,
    tropicalOverlapSourceIExponent8Row294,
    tropicalOverlapSourceJExponent8Row294, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
