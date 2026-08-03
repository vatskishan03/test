import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row149 :
    tropicalOverlapRelation8Row149 =
      tropicalOverlapSourceCombination8Row149 := by
  simp [tropicalOverlapRelation8Row149,
    tropicalOverlapSourceCombination8Row149,
    tropicalOverlapProvenance8Row149,
    tropicalOverlapSourceIExponent8Row149,
    tropicalOverlapSourceJExponent8Row149, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
