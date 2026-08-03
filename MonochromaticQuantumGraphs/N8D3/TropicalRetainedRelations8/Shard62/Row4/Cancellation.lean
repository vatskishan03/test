import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 314. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row314 :
    tropicalOverlapRelation8Row314 =
      tropicalOverlapSourceCombination8Row314 := by
  simp [tropicalOverlapRelation8Row314,
    tropicalOverlapSourceCombination8Row314,
    tropicalOverlapProvenance8Row314,
    tropicalOverlapSourceIExponent8Row314,
    tropicalOverlapSourceJExponent8Row314, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
