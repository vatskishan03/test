import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 153. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row153 :
    tropicalOverlapRelation8Row153 =
      tropicalOverlapSourceCombination8Row153 := by
  simp [tropicalOverlapRelation8Row153,
    tropicalOverlapSourceCombination8Row153,
    tropicalOverlapProvenance8Row153,
    tropicalOverlapSourceIExponent8Row153,
    tropicalOverlapSourceJExponent8Row153, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
