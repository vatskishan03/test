import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 162. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row162 :
    tropicalOverlapRelation8Row162 =
      tropicalOverlapSourceCombination8Row162 := by
  simp [tropicalOverlapRelation8Row162,
    tropicalOverlapSourceCombination8Row162,
    tropicalOverlapProvenance8Row162,
    tropicalOverlapSourceIExponent8Row162,
    tropicalOverlapSourceJExponent8Row162, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
