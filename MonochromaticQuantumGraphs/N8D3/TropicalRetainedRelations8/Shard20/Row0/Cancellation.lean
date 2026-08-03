import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 100. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row100 :
    tropicalOverlapRelation8Row100 =
      tropicalOverlapSourceCombination8Row100 := by
  simp [tropicalOverlapRelation8Row100,
    tropicalOverlapSourceCombination8Row100,
    tropicalOverlapProvenance8Row100,
    tropicalOverlapSourceIExponent8Row100,
    tropicalOverlapSourceJExponent8Row100, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
