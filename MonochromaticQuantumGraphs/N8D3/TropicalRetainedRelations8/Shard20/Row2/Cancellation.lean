import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 102. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row102 :
    tropicalOverlapRelation8Row102 =
      tropicalOverlapSourceCombination8Row102 := by
  simp [tropicalOverlapRelation8Row102,
    tropicalOverlapSourceCombination8Row102,
    tropicalOverlapProvenance8Row102,
    tropicalOverlapSourceIExponent8Row102,
    tropicalOverlapSourceJExponent8Row102, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
