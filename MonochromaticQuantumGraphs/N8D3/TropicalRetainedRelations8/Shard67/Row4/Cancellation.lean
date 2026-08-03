import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 339. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row339 :
    tropicalOverlapRelation8Row339 =
      tropicalOverlapSourceCombination8Row339 := by
  simp [tropicalOverlapRelation8Row339,
    tropicalOverlapSourceCombination8Row339,
    tropicalOverlapProvenance8Row339,
    tropicalOverlapSourceIExponent8Row339,
    tropicalOverlapSourceJExponent8Row339, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
