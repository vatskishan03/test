import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 202. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row202 :
    tropicalOverlapRelation8Row202 =
      tropicalOverlapSourceCombination8Row202 := by
  simp [tropicalOverlapRelation8Row202,
    tropicalOverlapSourceCombination8Row202,
    tropicalOverlapProvenance8Row202,
    tropicalOverlapSourceIExponent8Row202,
    tropicalOverlapSourceJExponent8Row202, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
