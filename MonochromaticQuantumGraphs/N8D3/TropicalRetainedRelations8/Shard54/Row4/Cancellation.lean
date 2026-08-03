import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row274 :
    tropicalOverlapRelation8Row274 =
      tropicalOverlapSourceCombination8Row274 := by
  simp [tropicalOverlapRelation8Row274,
    tropicalOverlapSourceCombination8Row274,
    tropicalOverlapProvenance8Row274,
    tropicalOverlapSourceIExponent8Row274,
    tropicalOverlapSourceJExponent8Row274, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
