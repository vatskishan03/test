import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row124 :
    tropicalOverlapRelation8Row124 =
      tropicalOverlapSourceCombination8Row124 := by
  simp [tropicalOverlapRelation8Row124,
    tropicalOverlapSourceCombination8Row124,
    tropicalOverlapProvenance8Row124,
    tropicalOverlapSourceIExponent8Row124,
    tropicalOverlapSourceJExponent8Row124, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
