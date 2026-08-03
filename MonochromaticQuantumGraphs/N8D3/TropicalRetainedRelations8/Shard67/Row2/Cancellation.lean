import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 337. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row337 :
    tropicalOverlapRelation8Row337 =
      tropicalOverlapSourceCombination8Row337 := by
  simp [tropicalOverlapRelation8Row337,
    tropicalOverlapSourceCombination8Row337,
    tropicalOverlapProvenance8Row337,
    tropicalOverlapSourceIExponent8Row337,
    tropicalOverlapSourceJExponent8Row337, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
