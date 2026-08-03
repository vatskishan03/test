import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 311. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row311 :
    tropicalOverlapRelation8Row311 =
      tropicalOverlapSourceCombination8Row311 := by
  simp [tropicalOverlapRelation8Row311,
    tropicalOverlapSourceCombination8Row311,
    tropicalOverlapProvenance8Row311,
    tropicalOverlapSourceIExponent8Row311,
    tropicalOverlapSourceJExponent8Row311, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
