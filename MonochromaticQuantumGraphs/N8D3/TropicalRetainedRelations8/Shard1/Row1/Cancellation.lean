import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 6. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row6 :
    tropicalOverlapRelation8Row6 =
      tropicalOverlapSourceCombination8Row6 := by
  simp [tropicalOverlapRelation8Row6,
    tropicalOverlapSourceCombination8Row6,
    tropicalOverlapProvenance8Row6,
    tropicalOverlapSourceIExponent8Row6,
    tropicalOverlapSourceJExponent8Row6, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
