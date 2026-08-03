import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 218. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row218 :
    tropicalOverlapRelation8Row218 =
      tropicalOverlapSourceCombination8Row218 := by
  simp [tropicalOverlapRelation8Row218,
    tropicalOverlapSourceCombination8Row218,
    tropicalOverlapProvenance8Row218,
    tropicalOverlapSourceIExponent8Row218,
    tropicalOverlapSourceJExponent8Row218, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
