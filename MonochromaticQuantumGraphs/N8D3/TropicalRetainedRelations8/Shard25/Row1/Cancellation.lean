import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 126. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row126 :
    tropicalOverlapRelation8Row126 =
      tropicalOverlapSourceCombination8Row126 := by
  simp [tropicalOverlapRelation8Row126,
    tropicalOverlapSourceCombination8Row126,
    tropicalOverlapProvenance8Row126,
    tropicalOverlapSourceIExponent8Row126,
    tropicalOverlapSourceJExponent8Row126, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
