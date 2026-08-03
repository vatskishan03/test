import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 171. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row171 :
    tropicalOverlapRelation8Row171 =
      tropicalOverlapSourceCombination8Row171 := by
  simp [tropicalOverlapRelation8Row171,
    tropicalOverlapSourceCombination8Row171,
    tropicalOverlapProvenance8Row171,
    tropicalOverlapSourceIExponent8Row171,
    tropicalOverlapSourceJExponent8Row171, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
