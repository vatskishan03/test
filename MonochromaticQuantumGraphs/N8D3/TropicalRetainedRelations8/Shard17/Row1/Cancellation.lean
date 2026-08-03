import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 86. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row86 :
    tropicalOverlapRelation8Row86 =
      tropicalOverlapSourceCombination8Row86 := by
  simp [tropicalOverlapRelation8Row86,
    tropicalOverlapSourceCombination8Row86,
    tropicalOverlapProvenance8Row86,
    tropicalOverlapSourceIExponent8Row86,
    tropicalOverlapSourceJExponent8Row86, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
