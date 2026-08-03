import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 51. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row51 :
    tropicalOverlapRelation8Row51 =
      tropicalOverlapSourceCombination8Row51 := by
  simp [tropicalOverlapRelation8Row51,
    tropicalOverlapSourceCombination8Row51,
    tropicalOverlapProvenance8Row51,
    tropicalOverlapSourceIExponent8Row51,
    tropicalOverlapSourceJExponent8Row51, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
