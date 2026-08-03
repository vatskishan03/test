import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 250. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row250 :
    tropicalOverlapRelation8Row250 =
      tropicalOverlapSourceCombination8Row250 := by
  simp [tropicalOverlapRelation8Row250,
    tropicalOverlapSourceCombination8Row250,
    tropicalOverlapProvenance8Row250,
    tropicalOverlapSourceIExponent8Row250,
    tropicalOverlapSourceJExponent8Row250, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
