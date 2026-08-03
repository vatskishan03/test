import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 33. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row33 :
    tropicalOverlapRelation8Row33 =
      tropicalOverlapSourceCombination8Row33 := by
  simp [tropicalOverlapRelation8Row33,
    tropicalOverlapSourceCombination8Row33,
    tropicalOverlapProvenance8Row33,
    tropicalOverlapSourceIExponent8Row33,
    tropicalOverlapSourceJExponent8Row33, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
