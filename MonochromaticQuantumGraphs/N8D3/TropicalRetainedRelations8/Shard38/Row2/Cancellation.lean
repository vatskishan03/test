import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 192. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row192 :
    tropicalOverlapRelation8Row192 =
      tropicalOverlapSourceCombination8Row192 := by
  simp [tropicalOverlapRelation8Row192,
    tropicalOverlapSourceCombination8Row192,
    tropicalOverlapProvenance8Row192,
    tropicalOverlapSourceIExponent8Row192,
    tropicalOverlapSourceJExponent8Row192, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
