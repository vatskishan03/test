import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 53. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row53 :
    tropicalOverlapRelation8Row53 =
      tropicalOverlapSourceCombination8Row53 := by
  simp [tropicalOverlapRelation8Row53,
    tropicalOverlapSourceCombination8Row53,
    tropicalOverlapProvenance8Row53,
    tropicalOverlapSourceIExponent8Row53,
    tropicalOverlapSourceJExponent8Row53, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
