import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row224 :
    tropicalOverlapRelation8Row224 =
      tropicalOverlapSourceCombination8Row224 := by
  simp [tropicalOverlapRelation8Row224,
    tropicalOverlapSourceCombination8Row224,
    tropicalOverlapProvenance8Row224,
    tropicalOverlapSourceIExponent8Row224,
    tropicalOverlapSourceJExponent8Row224, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
