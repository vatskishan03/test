import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row94 :
    tropicalOverlapRelation8Row94 =
      tropicalOverlapSourceCombination8Row94 := by
  simp [tropicalOverlapRelation8Row94,
    tropicalOverlapSourceCombination8Row94,
    tropicalOverlapProvenance8Row94,
    tropicalOverlapSourceIExponent8Row94,
    tropicalOverlapSourceJExponent8Row94, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
