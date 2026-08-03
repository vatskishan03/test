import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 147. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row147 :
    tropicalOverlapRelation8Row147 =
      tropicalOverlapSourceCombination8Row147 := by
  simp [tropicalOverlapRelation8Row147,
    tropicalOverlapSourceCombination8Row147,
    tropicalOverlapProvenance8Row147,
    tropicalOverlapSourceIExponent8Row147,
    tropicalOverlapSourceJExponent8Row147, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
