import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 211. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row211 :
    tropicalOverlapRelation8Row211 =
      tropicalOverlapSourceCombination8Row211 := by
  simp [tropicalOverlapRelation8Row211,
    tropicalOverlapSourceCombination8Row211,
    tropicalOverlapProvenance8Row211,
    tropicalOverlapSourceIExponent8Row211,
    tropicalOverlapSourceJExponent8Row211, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
