import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 66. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row66 :
    tropicalOverlapRelation8Row66 =
      tropicalOverlapSourceCombination8Row66 := by
  simp [tropicalOverlapRelation8Row66,
    tropicalOverlapSourceCombination8Row66,
    tropicalOverlapProvenance8Row66,
    tropicalOverlapSourceIExponent8Row66,
    tropicalOverlapSourceJExponent8Row66, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
