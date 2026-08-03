import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row29 :
    tropicalOverlapRelation8Row29 =
      tropicalOverlapSourceCombination8Row29 := by
  simp [tropicalOverlapRelation8Row29,
    tropicalOverlapSourceCombination8Row29,
    tropicalOverlapProvenance8Row29,
    tropicalOverlapSourceIExponent8Row29,
    tropicalOverlapSourceJExponent8Row29, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
