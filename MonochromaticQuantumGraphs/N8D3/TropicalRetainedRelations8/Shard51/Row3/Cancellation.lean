import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row258 :
    tropicalOverlapRelation8Row258 =
      tropicalOverlapSourceCombination8Row258 := by
  simp [tropicalOverlapRelation8Row258,
    tropicalOverlapSourceCombination8Row258,
    tropicalOverlapProvenance8Row258,
    tropicalOverlapSourceIExponent8Row258,
    tropicalOverlapSourceJExponent8Row258, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
