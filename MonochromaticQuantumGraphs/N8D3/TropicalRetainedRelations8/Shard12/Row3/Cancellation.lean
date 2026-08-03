import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 63. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row63 :
    tropicalOverlapRelation8Row63 =
      tropicalOverlapSourceCombination8Row63 := by
  simp [tropicalOverlapRelation8Row63,
    tropicalOverlapSourceCombination8Row63,
    tropicalOverlapProvenance8Row63,
    tropicalOverlapSourceIExponent8Row63,
    tropicalOverlapSourceJExponent8Row63, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
