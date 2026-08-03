import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 198. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row198 :
    tropicalOverlapRelation8Row198 =
      tropicalOverlapSourceCombination8Row198 := by
  simp [tropicalOverlapRelation8Row198,
    tropicalOverlapSourceCombination8Row198,
    tropicalOverlapProvenance8Row198,
    tropicalOverlapSourceIExponent8Row198,
    tropicalOverlapSourceJExponent8Row198, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
