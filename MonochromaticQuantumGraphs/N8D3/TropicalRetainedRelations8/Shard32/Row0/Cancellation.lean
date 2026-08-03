import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 160. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row160 :
    tropicalOverlapRelation8Row160 =
      tropicalOverlapSourceCombination8Row160 := by
  simp [tropicalOverlapRelation8Row160,
    tropicalOverlapSourceCombination8Row160,
    tropicalOverlapProvenance8Row160,
    tropicalOverlapSourceIExponent8Row160,
    tropicalOverlapSourceJExponent8Row160, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
