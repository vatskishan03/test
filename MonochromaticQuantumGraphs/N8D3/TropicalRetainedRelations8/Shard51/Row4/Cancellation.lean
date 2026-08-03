import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row259 :
    tropicalOverlapRelation8Row259 =
      tropicalOverlapSourceCombination8Row259 := by
  simp [tropicalOverlapRelation8Row259,
    tropicalOverlapSourceCombination8Row259,
    tropicalOverlapProvenance8Row259,
    tropicalOverlapSourceIExponent8Row259,
    tropicalOverlapSourceJExponent8Row259, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
