import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 326. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row326 :
    tropicalOverlapRelation8Row326 =
      tropicalOverlapSourceCombination8Row326 := by
  simp [tropicalOverlapRelation8Row326,
    tropicalOverlapSourceCombination8Row326,
    tropicalOverlapProvenance8Row326,
    tropicalOverlapSourceIExponent8Row326,
    tropicalOverlapSourceJExponent8Row326, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
