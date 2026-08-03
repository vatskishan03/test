import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 203. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row203 :
    tropicalOverlapRelation8Row203 =
      tropicalOverlapSourceCombination8Row203 := by
  simp [tropicalOverlapRelation8Row203,
    tropicalOverlapSourceCombination8Row203,
    tropicalOverlapProvenance8Row203,
    tropicalOverlapSourceIExponent8Row203,
    tropicalOverlapSourceJExponent8Row203, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
