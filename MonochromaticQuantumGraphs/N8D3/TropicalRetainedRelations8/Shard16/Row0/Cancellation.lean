import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 80. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row80 :
    tropicalOverlapRelation8Row80 =
      tropicalOverlapSourceCombination8Row80 := by
  simp [tropicalOverlapRelation8Row80,
    tropicalOverlapSourceCombination8Row80,
    tropicalOverlapProvenance8Row80,
    tropicalOverlapSourceIExponent8Row80,
    tropicalOverlapSourceJExponent8Row80, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
