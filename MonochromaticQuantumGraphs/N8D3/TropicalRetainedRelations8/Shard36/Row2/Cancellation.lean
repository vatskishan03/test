import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 182. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row182 :
    tropicalOverlapRelation8Row182 =
      tropicalOverlapSourceCombination8Row182 := by
  simp [tropicalOverlapRelation8Row182,
    tropicalOverlapSourceCombination8Row182,
    tropicalOverlapProvenance8Row182,
    tropicalOverlapSourceIExponent8Row182,
    tropicalOverlapSourceJExponent8Row182, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
