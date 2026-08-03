import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row261 :
    tropicalOverlapRelation8Row261 =
      tropicalOverlapSourceCombination8Row261 := by
  simp [tropicalOverlapRelation8Row261,
    tropicalOverlapSourceCombination8Row261,
    tropicalOverlapProvenance8Row261,
    tropicalOverlapSourceIExponent8Row261,
    tropicalOverlapSourceJExponent8Row261, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
