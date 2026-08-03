import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 301. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row301 :
    tropicalOverlapRelation8Row301 =
      tropicalOverlapSourceCombination8Row301 := by
  simp [tropicalOverlapRelation8Row301,
    tropicalOverlapSourceCombination8Row301,
    tropicalOverlapProvenance8Row301,
    tropicalOverlapSourceIExponent8Row301,
    tropicalOverlapSourceJExponent8Row301, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
