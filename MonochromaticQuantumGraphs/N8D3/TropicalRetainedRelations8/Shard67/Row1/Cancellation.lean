import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 336. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row336 :
    tropicalOverlapRelation8Row336 =
      tropicalOverlapSourceCombination8Row336 := by
  simp [tropicalOverlapRelation8Row336,
    tropicalOverlapSourceCombination8Row336,
    tropicalOverlapProvenance8Row336,
    tropicalOverlapSourceIExponent8Row336,
    tropicalOverlapSourceJExponent8Row336, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
