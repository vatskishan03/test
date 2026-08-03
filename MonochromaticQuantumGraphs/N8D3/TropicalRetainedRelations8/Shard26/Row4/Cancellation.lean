import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 134. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row134 :
    tropicalOverlapRelation8Row134 =
      tropicalOverlapSourceCombination8Row134 := by
  simp [tropicalOverlapRelation8Row134,
    tropicalOverlapSourceCombination8Row134,
    tropicalOverlapProvenance8Row134,
    tropicalOverlapSourceIExponent8Row134,
    tropicalOverlapSourceJExponent8Row134, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
