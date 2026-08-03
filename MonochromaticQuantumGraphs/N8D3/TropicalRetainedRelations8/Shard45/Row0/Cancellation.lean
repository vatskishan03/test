import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 225. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row225 :
    tropicalOverlapRelation8Row225 =
      tropicalOverlapSourceCombination8Row225 := by
  simp [tropicalOverlapRelation8Row225,
    tropicalOverlapSourceCombination8Row225,
    tropicalOverlapProvenance8Row225,
    tropicalOverlapSourceIExponent8Row225,
    tropicalOverlapSourceJExponent8Row225, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
