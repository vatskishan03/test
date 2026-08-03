import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row299 :
    tropicalOverlapRelation8Row299 =
      tropicalOverlapSourceCombination8Row299 := by
  simp [tropicalOverlapRelation8Row299,
    tropicalOverlapSourceCombination8Row299,
    tropicalOverlapProvenance8Row299,
    tropicalOverlapSourceIExponent8Row299,
    tropicalOverlapSourceJExponent8Row299, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
