import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 302. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row302 :
    tropicalOverlapRelation8Row302 =
      tropicalOverlapSourceCombination8Row302 := by
  simp [tropicalOverlapRelation8Row302,
    tropicalOverlapSourceCombination8Row302,
    tropicalOverlapProvenance8Row302,
    tropicalOverlapSourceIExponent8Row302,
    tropicalOverlapSourceJExponent8Row302, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
