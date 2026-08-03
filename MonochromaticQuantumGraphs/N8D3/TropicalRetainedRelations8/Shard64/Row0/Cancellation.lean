import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 320. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row320 :
    tropicalOverlapRelation8Row320 =
      tropicalOverlapSourceCombination8Row320 := by
  simp [tropicalOverlapRelation8Row320,
    tropicalOverlapSourceCombination8Row320,
    tropicalOverlapProvenance8Row320,
    tropicalOverlapSourceIExponent8Row320,
    tropicalOverlapSourceJExponent8Row320, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
