import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 167. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row167 :
    tropicalOverlapRelation8Row167 =
      tropicalOverlapSourceCombination8Row167 := by
  simp [tropicalOverlapRelation8Row167,
    tropicalOverlapSourceCombination8Row167,
    tropicalOverlapProvenance8Row167,
    tropicalOverlapSourceIExponent8Row167,
    tropicalOverlapSourceJExponent8Row167, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
