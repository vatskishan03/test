import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 352. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row352 :
    tropicalOverlapRelation8Row352 =
      tropicalOverlapSourceCombination8Row352 := by
  simp [tropicalOverlapRelation8Row352,
    tropicalOverlapSourceCombination8Row352,
    tropicalOverlapProvenance8Row352,
    tropicalOverlapSourceIExponent8Row352,
    tropicalOverlapSourceJExponent8Row352, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
