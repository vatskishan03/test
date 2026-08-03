import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 186. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row186 :
    tropicalOverlapRelation8Row186 =
      tropicalOverlapSourceCombination8Row186 := by
  simp [tropicalOverlapRelation8Row186,
    tropicalOverlapSourceCombination8Row186,
    tropicalOverlapProvenance8Row186,
    tropicalOverlapSourceIExponent8Row186,
    tropicalOverlapSourceJExponent8Row186, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
