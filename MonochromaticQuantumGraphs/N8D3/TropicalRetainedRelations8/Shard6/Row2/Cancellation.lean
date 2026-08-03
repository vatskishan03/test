import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 32. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row32 :
    tropicalOverlapRelation8Row32 =
      tropicalOverlapSourceCombination8Row32 := by
  simp [tropicalOverlapRelation8Row32,
    tropicalOverlapSourceCombination8Row32,
    tropicalOverlapProvenance8Row32,
    tropicalOverlapSourceIExponent8Row32,
    tropicalOverlapSourceJExponent8Row32, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
