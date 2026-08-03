import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 133. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row133 :
    tropicalOverlapRelation8Row133 =
      tropicalOverlapSourceCombination8Row133 := by
  simp [tropicalOverlapRelation8Row133,
    tropicalOverlapSourceCombination8Row133,
    tropicalOverlapProvenance8Row133,
    tropicalOverlapSourceIExponent8Row133,
    tropicalOverlapSourceJExponent8Row133, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
