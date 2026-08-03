import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 43. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row43 :
    tropicalOverlapRelation8Row43 =
      tropicalOverlapSourceCombination8Row43 := by
  simp [tropicalOverlapRelation8Row43,
    tropicalOverlapSourceCombination8Row43,
    tropicalOverlapProvenance8Row43,
    tropicalOverlapSourceIExponent8Row43,
    tropicalOverlapSourceJExponent8Row43, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
