import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 244. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row244 :
    tropicalOverlapRelation8Row244 =
      tropicalOverlapSourceCombination8Row244 := by
  simp [tropicalOverlapRelation8Row244,
    tropicalOverlapSourceCombination8Row244,
    tropicalOverlapProvenance8Row244,
    tropicalOverlapSourceIExponent8Row244,
    tropicalOverlapSourceJExponent8Row244, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
