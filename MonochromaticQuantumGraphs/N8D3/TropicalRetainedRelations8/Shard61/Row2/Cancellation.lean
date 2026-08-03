import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row307 :
    tropicalOverlapRelation8Row307 =
      tropicalOverlapSourceCombination8Row307 := by
  simp [tropicalOverlapRelation8Row307,
    tropicalOverlapSourceCombination8Row307,
    tropicalOverlapProvenance8Row307,
    tropicalOverlapSourceIExponent8Row307,
    tropicalOverlapSourceJExponent8Row307, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
