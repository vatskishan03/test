import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 122. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row122 :
    tropicalOverlapRelation8Row122 =
      tropicalOverlapSourceCombination8Row122 := by
  simp [tropicalOverlapRelation8Row122,
    tropicalOverlapSourceCombination8Row122,
    tropicalOverlapProvenance8Row122,
    tropicalOverlapSourceIExponent8Row122,
    tropicalOverlapSourceJExponent8Row122, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
