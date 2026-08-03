import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 22. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row22 :
    tropicalOverlapRelation8Row22 =
      tropicalOverlapSourceCombination8Row22 := by
  simp [tropicalOverlapRelation8Row22,
    tropicalOverlapSourceCombination8Row22,
    tropicalOverlapProvenance8Row22,
    tropicalOverlapSourceIExponent8Row22,
    tropicalOverlapSourceJExponent8Row22, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
