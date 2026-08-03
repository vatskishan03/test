import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row264 :
    tropicalOverlapRelation8Row264 =
      tropicalOverlapSourceCombination8Row264 := by
  simp [tropicalOverlapRelation8Row264,
    tropicalOverlapSourceCombination8Row264,
    tropicalOverlapProvenance8Row264,
    tropicalOverlapSourceIExponent8Row264,
    tropicalOverlapSourceJExponent8Row264, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
