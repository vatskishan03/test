import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 113. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row113 :
    tropicalOverlapRelation8Row113 =
      tropicalOverlapSourceCombination8Row113 := by
  simp [tropicalOverlapRelation8Row113,
    tropicalOverlapSourceCombination8Row113,
    tropicalOverlapProvenance8Row113,
    tropicalOverlapSourceIExponent8Row113,
    tropicalOverlapSourceJExponent8Row113, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
