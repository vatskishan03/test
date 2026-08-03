import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 136. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row136 :
    tropicalOverlapRelation8Row136 =
      tropicalOverlapSourceCombination8Row136 := by
  simp [tropicalOverlapRelation8Row136,
    tropicalOverlapSourceCombination8Row136,
    tropicalOverlapProvenance8Row136,
    tropicalOverlapSourceIExponent8Row136,
    tropicalOverlapSourceJExponent8Row136, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
