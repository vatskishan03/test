import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 323. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row323 :
    tropicalOverlapRelation8Row323 =
      tropicalOverlapSourceCombination8Row323 := by
  simp [tropicalOverlapRelation8Row323,
    tropicalOverlapSourceCombination8Row323,
    tropicalOverlapProvenance8Row323,
    tropicalOverlapSourceIExponent8Row323,
    tropicalOverlapSourceJExponent8Row323, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
