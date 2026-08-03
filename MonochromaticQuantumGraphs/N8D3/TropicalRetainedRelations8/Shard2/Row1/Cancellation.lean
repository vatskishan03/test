import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 11. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row11 :
    tropicalOverlapRelation8Row11 =
      tropicalOverlapSourceCombination8Row11 := by
  simp [tropicalOverlapRelation8Row11,
    tropicalOverlapSourceCombination8Row11,
    tropicalOverlapProvenance8Row11,
    tropicalOverlapSourceIExponent8Row11,
    tropicalOverlapSourceJExponent8Row11, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
