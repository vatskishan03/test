import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 5. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row5 :
    tropicalOverlapRelation8Row5 =
      tropicalOverlapSourceCombination8Row5 := by
  simp [tropicalOverlapRelation8Row5,
    tropicalOverlapSourceCombination8Row5,
    tropicalOverlapProvenance8Row5,
    tropicalOverlapSourceIExponent8Row5,
    tropicalOverlapSourceJExponent8Row5, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
