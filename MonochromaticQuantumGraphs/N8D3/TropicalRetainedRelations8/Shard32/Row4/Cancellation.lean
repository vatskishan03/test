import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 164. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row164 :
    tropicalOverlapRelation8Row164 =
      tropicalOverlapSourceCombination8Row164 := by
  simp [tropicalOverlapRelation8Row164,
    tropicalOverlapSourceCombination8Row164,
    tropicalOverlapProvenance8Row164,
    tropicalOverlapSourceIExponent8Row164,
    tropicalOverlapSourceJExponent8Row164, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
