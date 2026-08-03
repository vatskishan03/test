import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row254 :
    tropicalOverlapRelation8Row254 =
      tropicalOverlapSourceCombination8Row254 := by
  simp [tropicalOverlapRelation8Row254,
    tropicalOverlapSourceCombination8Row254,
    tropicalOverlapProvenance8Row254,
    tropicalOverlapSourceIExponent8Row254,
    tropicalOverlapSourceJExponent8Row254, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
