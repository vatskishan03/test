import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 228. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row228 :
    tropicalOverlapRelation8Row228 =
      tropicalOverlapSourceCombination8Row228 := by
  simp [tropicalOverlapRelation8Row228,
    tropicalOverlapSourceCombination8Row228,
    tropicalOverlapProvenance8Row228,
    tropicalOverlapSourceIExponent8Row228,
    tropicalOverlapSourceJExponent8Row228, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
