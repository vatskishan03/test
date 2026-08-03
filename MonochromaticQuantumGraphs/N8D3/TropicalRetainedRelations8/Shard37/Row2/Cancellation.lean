import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 187. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row187 :
    tropicalOverlapRelation8Row187 =
      tropicalOverlapSourceCombination8Row187 := by
  simp [tropicalOverlapRelation8Row187,
    tropicalOverlapSourceCombination8Row187,
    tropicalOverlapProvenance8Row187,
    tropicalOverlapSourceIExponent8Row187,
    tropicalOverlapSourceJExponent8Row187, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
