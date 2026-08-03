import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 304. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row304 :
    tropicalOverlapRelation8Row304 =
      tropicalOverlapSourceCombination8Row304 := by
  simp [tropicalOverlapRelation8Row304,
    tropicalOverlapSourceCombination8Row304,
    tropicalOverlapProvenance8Row304,
    tropicalOverlapSourceIExponent8Row304,
    tropicalOverlapSourceJExponent8Row304, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
