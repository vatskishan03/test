import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 72. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row72 :
    tropicalOverlapRelation8Row72 =
      tropicalOverlapSourceCombination8Row72 := by
  simp [tropicalOverlapRelation8Row72,
    tropicalOverlapSourceCombination8Row72,
    tropicalOverlapProvenance8Row72,
    tropicalOverlapSourceIExponent8Row72,
    tropicalOverlapSourceJExponent8Row72, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
