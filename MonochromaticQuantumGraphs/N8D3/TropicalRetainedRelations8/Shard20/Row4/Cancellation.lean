import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row104 :
    tropicalOverlapRelation8Row104 =
      tropicalOverlapSourceCombination8Row104 := by
  simp [tropicalOverlapRelation8Row104,
    tropicalOverlapSourceCombination8Row104,
    tropicalOverlapProvenance8Row104,
    tropicalOverlapSourceIExponent8Row104,
    tropicalOverlapSourceJExponent8Row104, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
