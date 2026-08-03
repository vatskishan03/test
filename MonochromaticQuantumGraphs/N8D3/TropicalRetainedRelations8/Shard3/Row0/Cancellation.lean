import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 15. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row15 :
    tropicalOverlapRelation8Row15 =
      tropicalOverlapSourceCombination8Row15 := by
  simp [tropicalOverlapRelation8Row15,
    tropicalOverlapSourceCombination8Row15,
    tropicalOverlapProvenance8Row15,
    tropicalOverlapSourceIExponent8Row15,
    tropicalOverlapSourceJExponent8Row15, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
