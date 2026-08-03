import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 60. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row60 :
    tropicalOverlapRelation8Row60 =
      tropicalOverlapSourceCombination8Row60 := by
  simp [tropicalOverlapRelation8Row60,
    tropicalOverlapSourceCombination8Row60,
    tropicalOverlapProvenance8Row60,
    tropicalOverlapSourceIExponent8Row60,
    tropicalOverlapSourceJExponent8Row60, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
