import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 281. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row281 :
    tropicalOverlapRelation8Row281 =
      tropicalOverlapSourceCombination8Row281 := by
  simp [tropicalOverlapRelation8Row281,
    tropicalOverlapSourceCombination8Row281,
    tropicalOverlapProvenance8Row281,
    tropicalOverlapSourceIExponent8Row281,
    tropicalOverlapSourceJExponent8Row281, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
