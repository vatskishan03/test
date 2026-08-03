import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 213. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row213 :
    tropicalOverlapRelation8Row213 =
      tropicalOverlapSourceCombination8Row213 := by
  simp [tropicalOverlapRelation8Row213,
    tropicalOverlapSourceCombination8Row213,
    tropicalOverlapProvenance8Row213,
    tropicalOverlapSourceIExponent8Row213,
    tropicalOverlapSourceJExponent8Row213, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
