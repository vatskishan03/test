import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row119 :
    tropicalOverlapRelation8Row119 =
      tropicalOverlapSourceCombination8Row119 := by
  simp [tropicalOverlapRelation8Row119,
    tropicalOverlapSourceCombination8Row119,
    tropicalOverlapProvenance8Row119,
    tropicalOverlapSourceIExponent8Row119,
    tropicalOverlapSourceJExponent8Row119, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
