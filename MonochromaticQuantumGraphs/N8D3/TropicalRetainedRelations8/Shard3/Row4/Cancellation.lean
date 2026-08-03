import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 19. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row19 :
    tropicalOverlapRelation8Row19 =
      tropicalOverlapSourceCombination8Row19 := by
  simp [tropicalOverlapRelation8Row19,
    tropicalOverlapSourceCombination8Row19,
    tropicalOverlapProvenance8Row19,
    tropicalOverlapSourceIExponent8Row19,
    tropicalOverlapSourceJExponent8Row19, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
