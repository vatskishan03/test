import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 313. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row313 :
    tropicalOverlapRelation8Row313 =
      tropicalOverlapSourceCombination8Row313 := by
  simp [tropicalOverlapRelation8Row313,
    tropicalOverlapSourceCombination8Row313,
    tropicalOverlapProvenance8Row313,
    tropicalOverlapSourceIExponent8Row313,
    tropicalOverlapSourceJExponent8Row313, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
