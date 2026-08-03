import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 138. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row138 :
    tropicalOverlapRelation8Row138 =
      tropicalOverlapSourceCombination8Row138 := by
  simp [tropicalOverlapRelation8Row138,
    tropicalOverlapSourceCombination8Row138,
    tropicalOverlapProvenance8Row138,
    tropicalOverlapSourceIExponent8Row138,
    tropicalOverlapSourceJExponent8Row138, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
