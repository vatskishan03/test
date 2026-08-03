import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 236. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row236 :
    tropicalOverlapRelation8Row236 =
      tropicalOverlapSourceCombination8Row236 := by
  simp [tropicalOverlapRelation8Row236,
    tropicalOverlapSourceCombination8Row236,
    tropicalOverlapProvenance8Row236,
    tropicalOverlapSourceIExponent8Row236,
    tropicalOverlapSourceJExponent8Row236, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
