import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row269 :
    tropicalOverlapRelation8Row269 =
      tropicalOverlapSourceCombination8Row269 := by
  simp [tropicalOverlapRelation8Row269,
    tropicalOverlapSourceCombination8Row269,
    tropicalOverlapProvenance8Row269,
    tropicalOverlapSourceIExponent8Row269,
    tropicalOverlapSourceJExponent8Row269, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
