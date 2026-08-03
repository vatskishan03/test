import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 230. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row230 :
    tropicalOverlapRelation8Row230 =
      tropicalOverlapSourceCombination8Row230 := by
  simp [tropicalOverlapRelation8Row230,
    tropicalOverlapSourceCombination8Row230,
    tropicalOverlapProvenance8Row230,
    tropicalOverlapSourceIExponent8Row230,
    tropicalOverlapSourceJExponent8Row230, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
