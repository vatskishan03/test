import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 146. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row146 :
    tropicalOverlapRelation8Row146 =
      tropicalOverlapSourceCombination8Row146 := by
  simp [tropicalOverlapRelation8Row146,
    tropicalOverlapSourceCombination8Row146,
    tropicalOverlapProvenance8Row146,
    tropicalOverlapSourceIExponent8Row146,
    tropicalOverlapSourceJExponent8Row146, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
