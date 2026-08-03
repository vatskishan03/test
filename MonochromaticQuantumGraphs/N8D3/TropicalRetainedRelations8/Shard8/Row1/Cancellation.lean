import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 41. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row41 :
    tropicalOverlapRelation8Row41 =
      tropicalOverlapSourceCombination8Row41 := by
  simp [tropicalOverlapRelation8Row41,
    tropicalOverlapSourceCombination8Row41,
    tropicalOverlapProvenance8Row41,
    tropicalOverlapSourceIExponent8Row41,
    tropicalOverlapSourceJExponent8Row41, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
