import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 248. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row248 :
    tropicalOverlapRelation8Row248 =
      tropicalOverlapSourceCombination8Row248 := by
  simp [tropicalOverlapRelation8Row248,
    tropicalOverlapSourceCombination8Row248,
    tropicalOverlapProvenance8Row248,
    tropicalOverlapSourceIExponent8Row248,
    tropicalOverlapSourceJExponent8Row248, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
