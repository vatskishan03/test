import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 221. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row221 :
    tropicalOverlapRelation8Row221 =
      tropicalOverlapSourceCombination8Row221 := by
  simp [tropicalOverlapRelation8Row221,
    tropicalOverlapSourceCombination8Row221,
    tropicalOverlapProvenance8Row221,
    tropicalOverlapSourceIExponent8Row221,
    tropicalOverlapSourceJExponent8Row221, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
