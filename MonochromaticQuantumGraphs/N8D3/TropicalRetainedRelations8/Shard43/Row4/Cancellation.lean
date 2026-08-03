import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row219 :
    tropicalOverlapRelation8Row219 =
      tropicalOverlapSourceCombination8Row219 := by
  simp [tropicalOverlapRelation8Row219,
    tropicalOverlapSourceCombination8Row219,
    tropicalOverlapProvenance8Row219,
    tropicalOverlapSourceIExponent8Row219,
    tropicalOverlapSourceJExponent8Row219, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
