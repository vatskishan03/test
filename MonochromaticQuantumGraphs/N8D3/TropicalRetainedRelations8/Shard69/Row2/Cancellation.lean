import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 347. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row347 :
    tropicalOverlapRelation8Row347 =
      tropicalOverlapSourceCombination8Row347 := by
  simp [tropicalOverlapRelation8Row347,
    tropicalOverlapSourceCombination8Row347,
    tropicalOverlapProvenance8Row347,
    tropicalOverlapSourceIExponent8Row347,
    tropicalOverlapSourceJExponent8Row347, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
