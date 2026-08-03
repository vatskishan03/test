import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 345. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row345 :
    tropicalOverlapRelation8Row345 =
      tropicalOverlapSourceCombination8Row345 := by
  simp [tropicalOverlapRelation8Row345,
    tropicalOverlapSourceCombination8Row345,
    tropicalOverlapProvenance8Row345,
    tropicalOverlapSourceIExponent8Row345,
    tropicalOverlapSourceJExponent8Row345, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
