import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 223. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row223 :
    tropicalOverlapRelation8Row223 =
      tropicalOverlapSourceCombination8Row223 := by
  simp [tropicalOverlapRelation8Row223,
    tropicalOverlapSourceCombination8Row223,
    tropicalOverlapProvenance8Row223,
    tropicalOverlapSourceIExponent8Row223,
    tropicalOverlapSourceJExponent8Row223, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
