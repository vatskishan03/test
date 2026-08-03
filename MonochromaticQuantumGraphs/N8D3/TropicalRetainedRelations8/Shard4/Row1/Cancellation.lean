import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 21. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row21 :
    tropicalOverlapRelation8Row21 =
      tropicalOverlapSourceCombination8Row21 := by
  simp [tropicalOverlapRelation8Row21,
    tropicalOverlapSourceCombination8Row21,
    tropicalOverlapProvenance8Row21,
    tropicalOverlapSourceIExponent8Row21,
    tropicalOverlapSourceJExponent8Row21, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
