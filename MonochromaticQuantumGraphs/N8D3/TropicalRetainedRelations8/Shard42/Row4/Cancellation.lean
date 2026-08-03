import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 214. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row214 :
    tropicalOverlapRelation8Row214 =
      tropicalOverlapSourceCombination8Row214 := by
  simp [tropicalOverlapRelation8Row214,
    tropicalOverlapSourceCombination8Row214,
    tropicalOverlapProvenance8Row214,
    tropicalOverlapSourceIExponent8Row214,
    tropicalOverlapSourceJExponent8Row214, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
