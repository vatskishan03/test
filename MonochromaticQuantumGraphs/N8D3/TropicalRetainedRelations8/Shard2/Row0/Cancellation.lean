import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 10. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row10 :
    tropicalOverlapRelation8Row10 =
      tropicalOverlapSourceCombination8Row10 := by
  simp [tropicalOverlapRelation8Row10,
    tropicalOverlapSourceCombination8Row10,
    tropicalOverlapProvenance8Row10,
    tropicalOverlapSourceIExponent8Row10,
    tropicalOverlapSourceJExponent8Row10, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
