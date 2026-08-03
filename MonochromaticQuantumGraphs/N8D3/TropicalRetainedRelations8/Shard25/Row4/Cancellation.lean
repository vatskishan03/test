import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 129. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row129 :
    tropicalOverlapRelation8Row129 =
      tropicalOverlapSourceCombination8Row129 := by
  simp [tropicalOverlapRelation8Row129,
    tropicalOverlapSourceCombination8Row129,
    tropicalOverlapProvenance8Row129,
    tropicalOverlapSourceIExponent8Row129,
    tropicalOverlapSourceJExponent8Row129, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
