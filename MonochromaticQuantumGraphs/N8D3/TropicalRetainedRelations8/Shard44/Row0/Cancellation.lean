import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 220. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row220 :
    tropicalOverlapRelation8Row220 =
      tropicalOverlapSourceCombination8Row220 := by
  simp [tropicalOverlapRelation8Row220,
    tropicalOverlapSourceCombination8Row220,
    tropicalOverlapProvenance8Row220,
    tropicalOverlapSourceIExponent8Row220,
    tropicalOverlapSourceJExponent8Row220, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
