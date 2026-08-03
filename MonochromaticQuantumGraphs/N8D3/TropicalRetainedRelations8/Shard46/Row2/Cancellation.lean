import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 232. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row232 :
    tropicalOverlapRelation8Row232 =
      tropicalOverlapSourceCombination8Row232 := by
  simp [tropicalOverlapRelation8Row232,
    tropicalOverlapSourceCombination8Row232,
    tropicalOverlapProvenance8Row232,
    tropicalOverlapSourceIExponent8Row232,
    tropicalOverlapSourceJExponent8Row232, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
