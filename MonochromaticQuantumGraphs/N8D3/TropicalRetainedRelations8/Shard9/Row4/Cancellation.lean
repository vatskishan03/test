import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row49 :
    tropicalOverlapRelation8Row49 =
      tropicalOverlapSourceCombination8Row49 := by
  simp [tropicalOverlapRelation8Row49,
    tropicalOverlapSourceCombination8Row49,
    tropicalOverlapProvenance8Row49,
    tropicalOverlapSourceIExponent8Row49,
    tropicalOverlapSourceJExponent8Row49, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
