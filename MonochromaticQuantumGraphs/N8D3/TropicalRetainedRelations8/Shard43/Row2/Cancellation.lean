import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 217. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row217 :
    tropicalOverlapRelation8Row217 =
      tropicalOverlapSourceCombination8Row217 := by
  simp [tropicalOverlapRelation8Row217,
    tropicalOverlapSourceCombination8Row217,
    tropicalOverlapProvenance8Row217,
    tropicalOverlapSourceIExponent8Row217,
    tropicalOverlapSourceJExponent8Row217, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
