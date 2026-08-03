import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 257. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row257 :
    tropicalOverlapRelation8Row257 =
      tropicalOverlapSourceCombination8Row257 := by
  simp [tropicalOverlapRelation8Row257,
    tropicalOverlapSourceCombination8Row257,
    tropicalOverlapProvenance8Row257,
    tropicalOverlapSourceIExponent8Row257,
    tropicalOverlapSourceJExponent8Row257, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
