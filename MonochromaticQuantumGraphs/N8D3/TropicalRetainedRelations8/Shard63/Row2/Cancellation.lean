import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 317. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row317 :
    tropicalOverlapRelation8Row317 =
      tropicalOverlapSourceCombination8Row317 := by
  simp [tropicalOverlapRelation8Row317,
    tropicalOverlapSourceCombination8Row317,
    tropicalOverlapProvenance8Row317,
    tropicalOverlapSourceIExponent8Row317,
    tropicalOverlapSourceJExponent8Row317, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
