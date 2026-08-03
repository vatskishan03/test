import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 12. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row12 :
    tropicalOverlapRelation8Row12 =
      tropicalOverlapSourceCombination8Row12 := by
  simp [tropicalOverlapRelation8Row12,
    tropicalOverlapSourceCombination8Row12,
    tropicalOverlapProvenance8Row12,
    tropicalOverlapSourceIExponent8Row12,
    tropicalOverlapSourceJExponent8Row12, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
