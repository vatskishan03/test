import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 58. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row58 :
    tropicalOverlapRelation8Row58 =
      tropicalOverlapSourceCombination8Row58 := by
  simp [tropicalOverlapRelation8Row58,
    tropicalOverlapSourceCombination8Row58,
    tropicalOverlapProvenance8Row58,
    tropicalOverlapSourceIExponent8Row58,
    tropicalOverlapSourceJExponent8Row58, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
