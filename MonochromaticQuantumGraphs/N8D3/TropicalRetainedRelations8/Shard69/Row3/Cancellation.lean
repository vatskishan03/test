import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 348. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row348 :
    tropicalOverlapRelation8Row348 =
      tropicalOverlapSourceCombination8Row348 := by
  simp [tropicalOverlapRelation8Row348,
    tropicalOverlapSourceCombination8Row348,
    tropicalOverlapProvenance8Row348,
    tropicalOverlapSourceIExponent8Row348,
    tropicalOverlapSourceJExponent8Row348, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
