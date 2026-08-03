import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 300. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row300 :
    tropicalOverlapRelation8Row300 =
      tropicalOverlapSourceCombination8Row300 := by
  simp [tropicalOverlapRelation8Row300,
    tropicalOverlapSourceCombination8Row300,
    tropicalOverlapProvenance8Row300,
    tropicalOverlapSourceIExponent8Row300,
    tropicalOverlapSourceJExponent8Row300, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
