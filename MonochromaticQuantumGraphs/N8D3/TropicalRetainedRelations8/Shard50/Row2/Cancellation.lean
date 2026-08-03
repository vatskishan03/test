import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 252. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row252 :
    tropicalOverlapRelation8Row252 =
      tropicalOverlapSourceCombination8Row252 := by
  simp [tropicalOverlapRelation8Row252,
    tropicalOverlapSourceCombination8Row252,
    tropicalOverlapProvenance8Row252,
    tropicalOverlapSourceIExponent8Row252,
    tropicalOverlapSourceJExponent8Row252, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
