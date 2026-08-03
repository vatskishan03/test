import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 50. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row50 :
    tropicalOverlapRelation8Row50 =
      tropicalOverlapSourceCombination8Row50 := by
  simp [tropicalOverlapRelation8Row50,
    tropicalOverlapSourceCombination8Row50,
    tropicalOverlapProvenance8Row50,
    tropicalOverlapSourceIExponent8Row50,
    tropicalOverlapSourceJExponent8Row50, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
