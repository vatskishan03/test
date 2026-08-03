import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 0. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row0 :
    tropicalOverlapRelation8Row0 =
      tropicalOverlapSourceCombination8Row0 := by
  simp [tropicalOverlapRelation8Row0,
    tropicalOverlapSourceCombination8Row0,
    tropicalOverlapProvenance8Row0,
    tropicalOverlapSourceIExponent8Row0,
    tropicalOverlapSourceJExponent8Row0, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
