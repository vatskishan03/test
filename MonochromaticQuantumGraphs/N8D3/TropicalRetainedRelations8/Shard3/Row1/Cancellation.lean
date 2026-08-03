import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 16. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row16 :
    tropicalOverlapRelation8Row16 =
      tropicalOverlapSourceCombination8Row16 := by
  simp [tropicalOverlapRelation8Row16,
    tropicalOverlapSourceCombination8Row16,
    tropicalOverlapProvenance8Row16,
    tropicalOverlapSourceIExponent8Row16,
    tropicalOverlapSourceJExponent8Row16, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
