import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 105. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row105 :
    tropicalOverlapRelation8Row105 =
      tropicalOverlapSourceCombination8Row105 := by
  simp [tropicalOverlapRelation8Row105,
    tropicalOverlapSourceCombination8Row105,
    tropicalOverlapProvenance8Row105,
    tropicalOverlapSourceIExponent8Row105,
    tropicalOverlapSourceJExponent8Row105, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
