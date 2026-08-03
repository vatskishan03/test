import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 103. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row103 :
    tropicalOverlapRelation8Row103 =
      tropicalOverlapSourceCombination8Row103 := by
  simp [tropicalOverlapRelation8Row103,
    tropicalOverlapSourceCombination8Row103,
    tropicalOverlapProvenance8Row103,
    tropicalOverlapSourceIExponent8Row103,
    tropicalOverlapSourceJExponent8Row103, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
