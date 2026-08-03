import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 117. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row117 :
    tropicalOverlapRelation8Row117 =
      tropicalOverlapSourceCombination8Row117 := by
  simp [tropicalOverlapRelation8Row117,
    tropicalOverlapSourceCombination8Row117,
    tropicalOverlapProvenance8Row117,
    tropicalOverlapSourceIExponent8Row117,
    tropicalOverlapSourceJExponent8Row117, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
