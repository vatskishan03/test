import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row354 :
    tropicalOverlapRelation8Row354 =
      tropicalOverlapSourceCombination8Row354 := by
  simp [tropicalOverlapRelation8Row354,
    tropicalOverlapSourceCombination8Row354,
    tropicalOverlapProvenance8Row354,
    tropicalOverlapSourceIExponent8Row354,
    tropicalOverlapSourceJExponent8Row354, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
