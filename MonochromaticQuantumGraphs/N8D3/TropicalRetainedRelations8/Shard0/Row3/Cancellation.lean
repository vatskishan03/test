import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 3. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row3 :
    tropicalOverlapRelation8Row3 =
      tropicalOverlapSourceCombination8Row3 := by
  simp [tropicalOverlapRelation8Row3,
    tropicalOverlapSourceCombination8Row3,
    tropicalOverlapProvenance8Row3,
    tropicalOverlapSourceIExponent8Row3,
    tropicalOverlapSourceJExponent8Row3, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
