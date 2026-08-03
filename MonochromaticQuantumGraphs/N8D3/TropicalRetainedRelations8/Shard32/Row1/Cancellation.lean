import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 161. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row161 :
    tropicalOverlapRelation8Row161 =
      tropicalOverlapSourceCombination8Row161 := by
  simp [tropicalOverlapRelation8Row161,
    tropicalOverlapSourceCombination8Row161,
    tropicalOverlapProvenance8Row161,
    tropicalOverlapSourceIExponent8Row161,
    tropicalOverlapSourceJExponent8Row161, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
