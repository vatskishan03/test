import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row279 :
    tropicalOverlapRelation8Row279 =
      tropicalOverlapSourceCombination8Row279 := by
  simp [tropicalOverlapRelation8Row279,
    tropicalOverlapSourceCombination8Row279,
    tropicalOverlapProvenance8Row279,
    tropicalOverlapSourceIExponent8Row279,
    tropicalOverlapSourceJExponent8Row279, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
