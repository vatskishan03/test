import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row359 :
    tropicalOverlapRelation8Row359 =
      tropicalOverlapSourceCombination8Row359 := by
  simp [tropicalOverlapRelation8Row359,
    tropicalOverlapSourceCombination8Row359,
    tropicalOverlapProvenance8Row359,
    tropicalOverlapSourceIExponent8Row359,
    tropicalOverlapSourceJExponent8Row359, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
