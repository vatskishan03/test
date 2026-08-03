import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 233. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row233 :
    tropicalOverlapRelation8Row233 =
      tropicalOverlapSourceCombination8Row233 := by
  simp [tropicalOverlapRelation8Row233,
    tropicalOverlapSourceCombination8Row233,
    tropicalOverlapProvenance8Row233,
    tropicalOverlapSourceIExponent8Row233,
    tropicalOverlapSourceJExponent8Row233, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
