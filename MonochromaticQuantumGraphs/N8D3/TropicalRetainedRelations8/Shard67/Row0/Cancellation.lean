import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 335. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row335 :
    tropicalOverlapRelation8Row335 =
      tropicalOverlapSourceCombination8Row335 := by
  simp [tropicalOverlapRelation8Row335,
    tropicalOverlapSourceCombination8Row335,
    tropicalOverlapProvenance8Row335,
    tropicalOverlapSourceIExponent8Row335,
    tropicalOverlapSourceJExponent8Row335, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
