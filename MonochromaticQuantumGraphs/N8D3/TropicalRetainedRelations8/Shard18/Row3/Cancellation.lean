import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 93. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row93 :
    tropicalOverlapRelation8Row93 =
      tropicalOverlapSourceCombination8Row93 := by
  simp [tropicalOverlapRelation8Row93,
    tropicalOverlapSourceCombination8Row93,
    tropicalOverlapProvenance8Row93,
    tropicalOverlapSourceIExponent8Row93,
    tropicalOverlapSourceJExponent8Row93, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
