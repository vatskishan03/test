import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 92. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row92 :
    tropicalOverlapRelation8Row92 =
      tropicalOverlapSourceCombination8Row92 := by
  simp [tropicalOverlapRelation8Row92,
    tropicalOverlapSourceCombination8Row92,
    tropicalOverlapProvenance8Row92,
    tropicalOverlapSourceIExponent8Row92,
    tropicalOverlapSourceJExponent8Row92, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
