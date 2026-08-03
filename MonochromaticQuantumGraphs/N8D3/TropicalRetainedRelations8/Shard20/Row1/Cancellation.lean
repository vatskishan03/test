import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 101. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row101 :
    tropicalOverlapRelation8Row101 =
      tropicalOverlapSourceCombination8Row101 := by
  simp [tropicalOverlapRelation8Row101,
    tropicalOverlapSourceCombination8Row101,
    tropicalOverlapProvenance8Row101,
    tropicalOverlapSourceIExponent8Row101,
    tropicalOverlapSourceJExponent8Row101, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
