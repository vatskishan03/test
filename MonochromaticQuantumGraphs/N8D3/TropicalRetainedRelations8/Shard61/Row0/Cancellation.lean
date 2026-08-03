import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 305. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row305 :
    tropicalOverlapRelation8Row305 =
      tropicalOverlapSourceCombination8Row305 := by
  simp [tropicalOverlapRelation8Row305,
    tropicalOverlapSourceCombination8Row305,
    tropicalOverlapProvenance8Row305,
    tropicalOverlapSourceIExponent8Row305,
    tropicalOverlapSourceJExponent8Row305, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
