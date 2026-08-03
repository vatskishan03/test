import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 191. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row191 :
    tropicalOverlapRelation8Row191 =
      tropicalOverlapSourceCombination8Row191 := by
  simp [tropicalOverlapRelation8Row191,
    tropicalOverlapSourceCombination8Row191,
    tropicalOverlapProvenance8Row191,
    tropicalOverlapSourceIExponent8Row191,
    tropicalOverlapSourceJExponent8Row191, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
