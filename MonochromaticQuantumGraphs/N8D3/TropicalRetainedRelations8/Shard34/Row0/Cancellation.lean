import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 170. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row170 :
    tropicalOverlapRelation8Row170 =
      tropicalOverlapSourceCombination8Row170 := by
  simp [tropicalOverlapRelation8Row170,
    tropicalOverlapSourceCombination8Row170,
    tropicalOverlapProvenance8Row170,
    tropicalOverlapSourceIExponent8Row170,
    tropicalOverlapSourceJExponent8Row170, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
