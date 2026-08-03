import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row59 :
    tropicalOverlapRelation8Row59 =
      tropicalOverlapSourceCombination8Row59 := by
  simp [tropicalOverlapRelation8Row59,
    tropicalOverlapSourceCombination8Row59,
    tropicalOverlapProvenance8Row59,
    tropicalOverlapSourceIExponent8Row59,
    tropicalOverlapSourceJExponent8Row59, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
