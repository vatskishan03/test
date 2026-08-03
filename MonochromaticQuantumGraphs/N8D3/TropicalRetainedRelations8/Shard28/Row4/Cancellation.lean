import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 144. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row144 :
    tropicalOverlapRelation8Row144 =
      tropicalOverlapSourceCombination8Row144 := by
  simp [tropicalOverlapRelation8Row144,
    tropicalOverlapSourceCombination8Row144,
    tropicalOverlapProvenance8Row144,
    tropicalOverlapSourceIExponent8Row144,
    tropicalOverlapSourceJExponent8Row144, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
