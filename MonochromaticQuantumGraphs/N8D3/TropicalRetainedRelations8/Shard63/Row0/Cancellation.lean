import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 315. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row315 :
    tropicalOverlapRelation8Row315 =
      tropicalOverlapSourceCombination8Row315 := by
  simp [tropicalOverlapRelation8Row315,
    tropicalOverlapSourceCombination8Row315,
    tropicalOverlapProvenance8Row315,
    tropicalOverlapSourceIExponent8Row315,
    tropicalOverlapSourceJExponent8Row315, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
