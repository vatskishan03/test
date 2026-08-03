import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 145. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row145 :
    tropicalOverlapRelation8Row145 =
      tropicalOverlapSourceCombination8Row145 := by
  simp [tropicalOverlapRelation8Row145,
    tropicalOverlapSourceCombination8Row145,
    tropicalOverlapProvenance8Row145,
    tropicalOverlapSourceIExponent8Row145,
    tropicalOverlapSourceJExponent8Row145, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
