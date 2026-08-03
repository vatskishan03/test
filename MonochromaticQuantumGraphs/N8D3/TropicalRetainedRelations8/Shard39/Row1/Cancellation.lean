import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 196. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row196 :
    tropicalOverlapRelation8Row196 =
      tropicalOverlapSourceCombination8Row196 := by
  simp [tropicalOverlapRelation8Row196,
    tropicalOverlapSourceCombination8Row196,
    tropicalOverlapProvenance8Row196,
    tropicalOverlapSourceIExponent8Row196,
    tropicalOverlapSourceJExponent8Row196, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
