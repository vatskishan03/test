import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 106. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row106 :
    tropicalOverlapRelation8Row106 =
      tropicalOverlapSourceCombination8Row106 := by
  simp [tropicalOverlapRelation8Row106,
    tropicalOverlapSourceCombination8Row106,
    tropicalOverlapProvenance8Row106,
    tropicalOverlapSourceIExponent8Row106,
    tropicalOverlapSourceJExponent8Row106, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
