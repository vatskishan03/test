import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 55. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row55 :
    tropicalOverlapRelation8Row55 =
      tropicalOverlapSourceCombination8Row55 := by
  simp [tropicalOverlapRelation8Row55,
    tropicalOverlapSourceCombination8Row55,
    tropicalOverlapProvenance8Row55,
    tropicalOverlapSourceIExponent8Row55,
    tropicalOverlapSourceJExponent8Row55, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
