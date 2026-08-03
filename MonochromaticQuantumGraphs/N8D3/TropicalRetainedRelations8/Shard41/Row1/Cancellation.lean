import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 206. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row206 :
    tropicalOverlapRelation8Row206 =
      tropicalOverlapSourceCombination8Row206 := by
  simp [tropicalOverlapRelation8Row206,
    tropicalOverlapSourceCombination8Row206,
    tropicalOverlapProvenance8Row206,
    tropicalOverlapSourceIExponent8Row206,
    tropicalOverlapSourceJExponent8Row206, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
