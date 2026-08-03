import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 87. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row87 :
    tropicalOverlapRelation8Row87 =
      tropicalOverlapSourceCombination8Row87 := by
  simp [tropicalOverlapRelation8Row87,
    tropicalOverlapSourceCombination8Row87,
    tropicalOverlapProvenance8Row87,
    tropicalOverlapSourceIExponent8Row87,
    tropicalOverlapSourceJExponent8Row87, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
