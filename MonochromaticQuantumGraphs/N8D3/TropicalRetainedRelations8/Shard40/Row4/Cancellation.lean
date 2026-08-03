import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row204 :
    tropicalOverlapRelation8Row204 =
      tropicalOverlapSourceCombination8Row204 := by
  simp [tropicalOverlapRelation8Row204,
    tropicalOverlapSourceCombination8Row204,
    tropicalOverlapProvenance8Row204,
    tropicalOverlapSourceIExponent8Row204,
    tropicalOverlapSourceJExponent8Row204, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
