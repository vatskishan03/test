import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 356. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row356 :
    tropicalOverlapRelation8Row356 =
      tropicalOverlapSourceCombination8Row356 := by
  simp [tropicalOverlapRelation8Row356,
    tropicalOverlapSourceCombination8Row356,
    tropicalOverlapProvenance8Row356,
    tropicalOverlapSourceIExponent8Row356,
    tropicalOverlapSourceJExponent8Row356, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
