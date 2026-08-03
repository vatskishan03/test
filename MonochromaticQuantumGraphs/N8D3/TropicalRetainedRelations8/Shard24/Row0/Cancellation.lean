import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 120. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row120 :
    tropicalOverlapRelation8Row120 =
      tropicalOverlapSourceCombination8Row120 := by
  simp [tropicalOverlapRelation8Row120,
    tropicalOverlapSourceCombination8Row120,
    tropicalOverlapProvenance8Row120,
    tropicalOverlapSourceIExponent8Row120,
    tropicalOverlapSourceJExponent8Row120, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
