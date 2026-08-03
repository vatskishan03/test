import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 83. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row83 :
    tropicalOverlapRelation8Row83 =
      tropicalOverlapSourceCombination8Row83 := by
  simp [tropicalOverlapRelation8Row83,
    tropicalOverlapSourceCombination8Row83,
    tropicalOverlapProvenance8Row83,
    tropicalOverlapSourceIExponent8Row83,
    tropicalOverlapSourceJExponent8Row83, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
