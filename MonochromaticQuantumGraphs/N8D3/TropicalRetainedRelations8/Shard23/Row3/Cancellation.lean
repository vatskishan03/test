import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 118. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row118 :
    tropicalOverlapRelation8Row118 =
      tropicalOverlapSourceCombination8Row118 := by
  simp [tropicalOverlapRelation8Row118,
    tropicalOverlapSourceCombination8Row118,
    tropicalOverlapProvenance8Row118,
    tropicalOverlapSourceIExponent8Row118,
    tropicalOverlapSourceJExponent8Row118, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
