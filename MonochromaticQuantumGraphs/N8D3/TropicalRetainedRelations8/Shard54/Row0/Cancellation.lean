import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 270. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row270 :
    tropicalOverlapRelation8Row270 =
      tropicalOverlapSourceCombination8Row270 := by
  simp [tropicalOverlapRelation8Row270,
    tropicalOverlapSourceCombination8Row270,
    tropicalOverlapProvenance8Row270,
    tropicalOverlapSourceIExponent8Row270,
    tropicalOverlapSourceJExponent8Row270, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
