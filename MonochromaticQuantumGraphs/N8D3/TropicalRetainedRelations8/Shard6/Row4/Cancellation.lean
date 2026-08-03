import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row34 :
    tropicalOverlapRelation8Row34 =
      tropicalOverlapSourceCombination8Row34 := by
  simp [tropicalOverlapRelation8Row34,
    tropicalOverlapSourceCombination8Row34,
    tropicalOverlapProvenance8Row34,
    tropicalOverlapSourceIExponent8Row34,
    tropicalOverlapSourceJExponent8Row34, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
