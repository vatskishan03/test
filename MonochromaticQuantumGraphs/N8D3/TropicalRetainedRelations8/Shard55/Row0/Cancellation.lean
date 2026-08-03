import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 275. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row275 :
    tropicalOverlapRelation8Row275 =
      tropicalOverlapSourceCombination8Row275 := by
  simp [tropicalOverlapRelation8Row275,
    tropicalOverlapSourceCombination8Row275,
    tropicalOverlapProvenance8Row275,
    tropicalOverlapSourceIExponent8Row275,
    tropicalOverlapSourceJExponent8Row275, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
