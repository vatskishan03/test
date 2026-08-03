import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 247. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row247 :
    tropicalOverlapRelation8Row247 =
      tropicalOverlapSourceCombination8Row247 := by
  simp [tropicalOverlapRelation8Row247,
    tropicalOverlapSourceCombination8Row247,
    tropicalOverlapProvenance8Row247,
    tropicalOverlapSourceIExponent8Row247,
    tropicalOverlapSourceJExponent8Row247, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
