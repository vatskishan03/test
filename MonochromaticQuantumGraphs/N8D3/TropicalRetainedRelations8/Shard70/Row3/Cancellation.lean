import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 353. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row353 :
    tropicalOverlapRelation8Row353 =
      tropicalOverlapSourceCombination8Row353 := by
  simp [tropicalOverlapRelation8Row353,
    tropicalOverlapSourceCombination8Row353,
    tropicalOverlapProvenance8Row353,
    tropicalOverlapSourceIExponent8Row353,
    tropicalOverlapSourceJExponent8Row353, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
