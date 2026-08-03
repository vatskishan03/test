import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 276. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row276 :
    tropicalOverlapRelation8Row276 =
      tropicalOverlapSourceCombination8Row276 := by
  simp [tropicalOverlapRelation8Row276,
    tropicalOverlapSourceCombination8Row276,
    tropicalOverlapProvenance8Row276,
    tropicalOverlapSourceIExponent8Row276,
    tropicalOverlapSourceJExponent8Row276, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
