import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 111. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row111 :
    tropicalOverlapRelation8Row111 =
      tropicalOverlapSourceCombination8Row111 := by
  simp [tropicalOverlapRelation8Row111,
    tropicalOverlapSourceCombination8Row111,
    tropicalOverlapProvenance8Row111,
    tropicalOverlapSourceIExponent8Row111,
    tropicalOverlapSourceJExponent8Row111, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
