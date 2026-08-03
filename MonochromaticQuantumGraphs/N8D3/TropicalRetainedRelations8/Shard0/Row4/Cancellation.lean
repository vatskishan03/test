import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 4. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row4 :
    tropicalOverlapRelation8Row4 =
      tropicalOverlapSourceCombination8Row4 := by
  simp [tropicalOverlapRelation8Row4,
    tropicalOverlapSourceCombination8Row4,
    tropicalOverlapProvenance8Row4,
    tropicalOverlapSourceIExponent8Row4,
    tropicalOverlapSourceJExponent8Row4, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
