import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 179. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row179 :
    tropicalOverlapRelation8Row179 =
      tropicalOverlapSourceCombination8Row179 := by
  simp [tropicalOverlapRelation8Row179,
    tropicalOverlapSourceCombination8Row179,
    tropicalOverlapProvenance8Row179,
    tropicalOverlapSourceIExponent8Row179,
    tropicalOverlapSourceJExponent8Row179, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
