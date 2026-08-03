import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 296. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row296 :
    tropicalOverlapRelation8Row296 =
      tropicalOverlapSourceCombination8Row296 := by
  simp [tropicalOverlapRelation8Row296,
    tropicalOverlapSourceCombination8Row296,
    tropicalOverlapProvenance8Row296,
    tropicalOverlapSourceIExponent8Row296,
    tropicalOverlapSourceJExponent8Row296, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
