import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 28. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row28 :
    tropicalOverlapRelation8Row28 =
      tropicalOverlapSourceCombination8Row28 := by
  simp [tropicalOverlapRelation8Row28,
    tropicalOverlapSourceCombination8Row28,
    tropicalOverlapProvenance8Row28,
    tropicalOverlapSourceIExponent8Row28,
    tropicalOverlapSourceJExponent8Row28, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
