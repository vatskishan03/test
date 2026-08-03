import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 226. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row226 :
    tropicalOverlapRelation8Row226 =
      tropicalOverlapSourceCombination8Row226 := by
  simp [tropicalOverlapRelation8Row226,
    tropicalOverlapSourceCombination8Row226,
    tropicalOverlapProvenance8Row226,
    tropicalOverlapSourceIExponent8Row226,
    tropicalOverlapSourceJExponent8Row226, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
