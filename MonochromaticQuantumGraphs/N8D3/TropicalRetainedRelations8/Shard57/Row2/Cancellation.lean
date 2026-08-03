import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 287. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row287 :
    tropicalOverlapRelation8Row287 =
      tropicalOverlapSourceCombination8Row287 := by
  simp [tropicalOverlapRelation8Row287,
    tropicalOverlapSourceCombination8Row287,
    tropicalOverlapProvenance8Row287,
    tropicalOverlapSourceIExponent8Row287,
    tropicalOverlapSourceJExponent8Row287, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
