import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 342. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row342 :
    tropicalOverlapRelation8Row342 =
      tropicalOverlapSourceCombination8Row342 := by
  simp [tropicalOverlapRelation8Row342,
    tropicalOverlapSourceCombination8Row342,
    tropicalOverlapProvenance8Row342,
    tropicalOverlapSourceIExponent8Row342,
    tropicalOverlapSourceJExponent8Row342, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
