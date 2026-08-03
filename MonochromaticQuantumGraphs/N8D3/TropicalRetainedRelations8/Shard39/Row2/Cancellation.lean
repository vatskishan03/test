import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 197. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row197 :
    tropicalOverlapRelation8Row197 =
      tropicalOverlapSourceCombination8Row197 := by
  simp [tropicalOverlapRelation8Row197,
    tropicalOverlapSourceCombination8Row197,
    tropicalOverlapProvenance8Row197,
    tropicalOverlapSourceIExponent8Row197,
    tropicalOverlapSourceJExponent8Row197, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
