import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 291. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row291 :
    tropicalOverlapRelation8Row291 =
      tropicalOverlapSourceCombination8Row291 := by
  simp [tropicalOverlapRelation8Row291,
    tropicalOverlapSourceCombination8Row291,
    tropicalOverlapProvenance8Row291,
    tropicalOverlapSourceIExponent8Row291,
    tropicalOverlapSourceJExponent8Row291, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
