import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 308. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row308 :
    tropicalOverlapRelation8Row308 =
      tropicalOverlapSourceCombination8Row308 := by
  simp [tropicalOverlapRelation8Row308,
    tropicalOverlapSourceCombination8Row308,
    tropicalOverlapProvenance8Row308,
    tropicalOverlapSourceIExponent8Row308,
    tropicalOverlapSourceJExponent8Row308, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
