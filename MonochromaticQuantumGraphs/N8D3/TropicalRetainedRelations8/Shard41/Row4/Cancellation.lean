import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row209 :
    tropicalOverlapRelation8Row209 =
      tropicalOverlapSourceCombination8Row209 := by
  simp [tropicalOverlapRelation8Row209,
    tropicalOverlapSourceCombination8Row209,
    tropicalOverlapProvenance8Row209,
    tropicalOverlapSourceIExponent8Row209,
    tropicalOverlapSourceJExponent8Row209, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
