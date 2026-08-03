import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 152. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row152 :
    tropicalOverlapRelation8Row152 =
      tropicalOverlapSourceCombination8Row152 := by
  simp [tropicalOverlapRelation8Row152,
    tropicalOverlapSourceCombination8Row152,
    tropicalOverlapProvenance8Row152,
    tropicalOverlapSourceIExponent8Row152,
    tropicalOverlapSourceJExponent8Row152, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
