import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 185. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row185 :
    tropicalOverlapRelation8Row185 =
      tropicalOverlapSourceCombination8Row185 := by
  simp [tropicalOverlapRelation8Row185,
    tropicalOverlapSourceCombination8Row185,
    tropicalOverlapProvenance8Row185,
    tropicalOverlapSourceIExponent8Row185,
    tropicalOverlapSourceJExponent8Row185, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
