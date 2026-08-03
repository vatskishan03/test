import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 123. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row123 :
    tropicalOverlapRelation8Row123 =
      tropicalOverlapSourceCombination8Row123 := by
  simp [tropicalOverlapRelation8Row123,
    tropicalOverlapSourceCombination8Row123,
    tropicalOverlapProvenance8Row123,
    tropicalOverlapSourceIExponent8Row123,
    tropicalOverlapSourceJExponent8Row123, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
