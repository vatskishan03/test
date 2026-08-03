import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 318. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row318 :
    tropicalOverlapRelation8Row318 =
      tropicalOverlapSourceCombination8Row318 := by
  simp [tropicalOverlapRelation8Row318,
    tropicalOverlapSourceCombination8Row318,
    tropicalOverlapProvenance8Row318,
    tropicalOverlapSourceIExponent8Row318,
    tropicalOverlapSourceJExponent8Row318, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
