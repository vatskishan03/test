import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 91. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row91 :
    tropicalOverlapRelation8Row91 =
      tropicalOverlapSourceCombination8Row91 := by
  simp [tropicalOverlapRelation8Row91,
    tropicalOverlapSourceCombination8Row91,
    tropicalOverlapProvenance8Row91,
    tropicalOverlapSourceIExponent8Row91,
    tropicalOverlapSourceJExponent8Row91, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
