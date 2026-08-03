import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 116. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row116 :
    tropicalOverlapRelation8Row116 =
      tropicalOverlapSourceCombination8Row116 := by
  simp [tropicalOverlapRelation8Row116,
    tropicalOverlapSourceCombination8Row116,
    tropicalOverlapProvenance8Row116,
    tropicalOverlapSourceIExponent8Row116,
    tropicalOverlapSourceJExponent8Row116, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
