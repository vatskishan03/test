import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 45. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row45 :
    tropicalOverlapRelation8Row45 =
      tropicalOverlapSourceCombination8Row45 := by
  simp [tropicalOverlapRelation8Row45,
    tropicalOverlapSourceCombination8Row45,
    tropicalOverlapProvenance8Row45,
    tropicalOverlapSourceIExponent8Row45,
    tropicalOverlapSourceJExponent8Row45, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
