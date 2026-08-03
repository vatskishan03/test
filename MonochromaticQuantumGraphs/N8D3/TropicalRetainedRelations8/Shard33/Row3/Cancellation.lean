import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 168. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row168 :
    tropicalOverlapRelation8Row168 =
      tropicalOverlapSourceCombination8Row168 := by
  simp [tropicalOverlapRelation8Row168,
    tropicalOverlapSourceCombination8Row168,
    tropicalOverlapProvenance8Row168,
    tropicalOverlapSourceIExponent8Row168,
    tropicalOverlapSourceJExponent8Row168, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
