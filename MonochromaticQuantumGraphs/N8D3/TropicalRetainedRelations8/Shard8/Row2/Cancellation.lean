import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 42. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row42 :
    tropicalOverlapRelation8Row42 =
      tropicalOverlapSourceCombination8Row42 := by
  simp [tropicalOverlapRelation8Row42,
    tropicalOverlapSourceCombination8Row42,
    tropicalOverlapProvenance8Row42,
    tropicalOverlapSourceIExponent8Row42,
    tropicalOverlapSourceJExponent8Row42, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
