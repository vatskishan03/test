import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 263. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row263 :
    tropicalOverlapRelation8Row263 =
      tropicalOverlapSourceCombination8Row263 := by
  simp [tropicalOverlapRelation8Row263,
    tropicalOverlapSourceCombination8Row263,
    tropicalOverlapProvenance8Row263,
    tropicalOverlapSourceIExponent8Row263,
    tropicalOverlapSourceJExponent8Row263, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
