import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 237. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row237 :
    tropicalOverlapRelation8Row237 =
      tropicalOverlapSourceCombination8Row237 := by
  simp [tropicalOverlapRelation8Row237,
    tropicalOverlapSourceCombination8Row237,
    tropicalOverlapProvenance8Row237,
    tropicalOverlapSourceIExponent8Row237,
    tropicalOverlapSourceJExponent8Row237, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
