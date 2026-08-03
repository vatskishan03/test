import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 195. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row195 :
    tropicalOverlapRelation8Row195 =
      tropicalOverlapSourceCombination8Row195 := by
  simp [tropicalOverlapRelation8Row195,
    tropicalOverlapSourceCombination8Row195,
    tropicalOverlapProvenance8Row195,
    tropicalOverlapSourceIExponent8Row195,
    tropicalOverlapSourceJExponent8Row195, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
