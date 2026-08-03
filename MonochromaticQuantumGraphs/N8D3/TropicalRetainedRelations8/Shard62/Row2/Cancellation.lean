import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 312. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row312 :
    tropicalOverlapRelation8Row312 =
      tropicalOverlapSourceCombination8Row312 := by
  simp [tropicalOverlapRelation8Row312,
    tropicalOverlapSourceCombination8Row312,
    tropicalOverlapProvenance8Row312,
    tropicalOverlapSourceIExponent8Row312,
    tropicalOverlapSourceJExponent8Row312, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
