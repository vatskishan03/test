import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 48. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row48 :
    tropicalOverlapRelation8Row48 =
      tropicalOverlapSourceCombination8Row48 := by
  simp [tropicalOverlapRelation8Row48,
    tropicalOverlapSourceCombination8Row48,
    tropicalOverlapProvenance8Row48,
    tropicalOverlapSourceIExponent8Row48,
    tropicalOverlapSourceJExponent8Row48, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
