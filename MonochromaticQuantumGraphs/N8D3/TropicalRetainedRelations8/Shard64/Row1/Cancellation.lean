import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 321. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row321 :
    tropicalOverlapRelation8Row321 =
      tropicalOverlapSourceCombination8Row321 := by
  simp [tropicalOverlapRelation8Row321,
    tropicalOverlapSourceCombination8Row321,
    tropicalOverlapProvenance8Row321,
    tropicalOverlapSourceIExponent8Row321,
    tropicalOverlapSourceJExponent8Row321, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
