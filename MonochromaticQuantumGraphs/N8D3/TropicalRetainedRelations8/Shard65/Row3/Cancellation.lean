import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 328. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row328 :
    tropicalOverlapRelation8Row328 =
      tropicalOverlapSourceCombination8Row328 := by
  simp [tropicalOverlapRelation8Row328,
    tropicalOverlapSourceCombination8Row328,
    tropicalOverlapProvenance8Row328,
    tropicalOverlapSourceIExponent8Row328,
    tropicalOverlapSourceJExponent8Row328, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
