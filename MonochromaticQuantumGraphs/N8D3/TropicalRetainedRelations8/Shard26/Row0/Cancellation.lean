import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 130. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row130 :
    tropicalOverlapRelation8Row130 =
      tropicalOverlapSourceCombination8Row130 := by
  simp [tropicalOverlapRelation8Row130,
    tropicalOverlapSourceCombination8Row130,
    tropicalOverlapProvenance8Row130,
    tropicalOverlapSourceIExponent8Row130,
    tropicalOverlapSourceJExponent8Row130, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
