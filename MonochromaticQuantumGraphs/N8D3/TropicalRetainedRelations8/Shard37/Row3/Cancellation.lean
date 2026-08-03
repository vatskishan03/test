import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 188. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row188 :
    tropicalOverlapRelation8Row188 =
      tropicalOverlapSourceCombination8Row188 := by
  simp [tropicalOverlapRelation8Row188,
    tropicalOverlapSourceCombination8Row188,
    tropicalOverlapProvenance8Row188,
    tropicalOverlapSourceIExponent8Row188,
    tropicalOverlapSourceJExponent8Row188, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
