import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 110. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row110 :
    tropicalOverlapRelation8Row110 =
      tropicalOverlapSourceCombination8Row110 := by
  simp [tropicalOverlapRelation8Row110,
    tropicalOverlapSourceCombination8Row110,
    tropicalOverlapProvenance8Row110,
    tropicalOverlapSourceIExponent8Row110,
    tropicalOverlapSourceJExponent8Row110, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
