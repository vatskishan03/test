import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 78. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row78 :
    tropicalOverlapRelation8Row78 =
      tropicalOverlapSourceCombination8Row78 := by
  simp [tropicalOverlapRelation8Row78,
    tropicalOverlapSourceCombination8Row78,
    tropicalOverlapProvenance8Row78,
    tropicalOverlapSourceIExponent8Row78,
    tropicalOverlapSourceJExponent8Row78, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
