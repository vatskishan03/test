import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 135. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row135 :
    tropicalOverlapRelation8Row135 =
      tropicalOverlapSourceCombination8Row135 := by
  simp [tropicalOverlapRelation8Row135,
    tropicalOverlapSourceCombination8Row135,
    tropicalOverlapProvenance8Row135,
    tropicalOverlapSourceIExponent8Row135,
    tropicalOverlapSourceJExponent8Row135, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
