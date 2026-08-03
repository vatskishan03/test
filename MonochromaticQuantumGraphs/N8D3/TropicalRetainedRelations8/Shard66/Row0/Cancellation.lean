import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 330. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row330 :
    tropicalOverlapRelation8Row330 =
      tropicalOverlapSourceCombination8Row330 := by
  simp [tropicalOverlapRelation8Row330,
    tropicalOverlapSourceCombination8Row330,
    tropicalOverlapProvenance8Row330,
    tropicalOverlapSourceIExponent8Row330,
    tropicalOverlapSourceJExponent8Row330, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
