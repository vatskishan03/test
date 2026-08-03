import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 95. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row95 :
    tropicalOverlapRelation8Row95 =
      tropicalOverlapSourceCombination8Row95 := by
  simp [tropicalOverlapRelation8Row95,
    tropicalOverlapSourceCombination8Row95,
    tropicalOverlapProvenance8Row95,
    tropicalOverlapSourceIExponent8Row95,
    tropicalOverlapSourceJExponent8Row95, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
