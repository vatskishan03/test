import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 357. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row357 :
    tropicalOverlapRelation8Row357 =
      tropicalOverlapSourceCombination8Row357 := by
  simp [tropicalOverlapRelation8Row357,
    tropicalOverlapSourceCombination8Row357,
    tropicalOverlapProvenance8Row357,
    tropicalOverlapSourceIExponent8Row357,
    tropicalOverlapSourceJExponent8Row357, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
