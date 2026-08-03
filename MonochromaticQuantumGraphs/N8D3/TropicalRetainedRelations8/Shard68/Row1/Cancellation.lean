import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 341. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row341 :
    tropicalOverlapRelation8Row341 =
      tropicalOverlapSourceCombination8Row341 := by
  simp [tropicalOverlapRelation8Row341,
    tropicalOverlapSourceCombination8Row341,
    tropicalOverlapProvenance8Row341,
    tropicalOverlapSourceIExponent8Row341,
    tropicalOverlapSourceJExponent8Row341, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
