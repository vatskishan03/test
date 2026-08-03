import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 57. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row57 :
    tropicalOverlapRelation8Row57 =
      tropicalOverlapSourceCombination8Row57 := by
  simp [tropicalOverlapRelation8Row57,
    tropicalOverlapSourceCombination8Row57,
    tropicalOverlapProvenance8Row57,
    tropicalOverlapSourceIExponent8Row57,
    tropicalOverlapSourceJExponent8Row57, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
