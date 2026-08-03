import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 47. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row47 :
    tropicalOverlapRelation8Row47 =
      tropicalOverlapSourceCombination8Row47 := by
  simp [tropicalOverlapRelation8Row47,
    tropicalOverlapSourceCombination8Row47,
    tropicalOverlapProvenance8Row47,
    tropicalOverlapSourceIExponent8Row47,
    tropicalOverlapSourceJExponent8Row47, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
