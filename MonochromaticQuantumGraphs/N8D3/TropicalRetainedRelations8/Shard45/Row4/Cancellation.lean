import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row229 :
    tropicalOverlapRelation8Row229 =
      tropicalOverlapSourceCombination8Row229 := by
  simp [tropicalOverlapRelation8Row229,
    tropicalOverlapSourceCombination8Row229,
    tropicalOverlapProvenance8Row229,
    tropicalOverlapSourceIExponent8Row229,
    tropicalOverlapSourceJExponent8Row229, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
