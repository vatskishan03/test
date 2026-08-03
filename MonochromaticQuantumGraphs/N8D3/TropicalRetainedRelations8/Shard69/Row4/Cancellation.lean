import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 349. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row349 :
    tropicalOverlapRelation8Row349 =
      tropicalOverlapSourceCombination8Row349 := by
  simp [tropicalOverlapRelation8Row349,
    tropicalOverlapSourceCombination8Row349,
    tropicalOverlapProvenance8Row349,
    tropicalOverlapSourceIExponent8Row349,
    tropicalOverlapSourceJExponent8Row349, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
