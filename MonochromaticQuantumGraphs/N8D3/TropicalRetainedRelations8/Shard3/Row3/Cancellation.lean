import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 18. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row18 :
    tropicalOverlapRelation8Row18 =
      tropicalOverlapSourceCombination8Row18 := by
  simp [tropicalOverlapRelation8Row18,
    tropicalOverlapSourceCombination8Row18,
    tropicalOverlapProvenance8Row18,
    tropicalOverlapSourceIExponent8Row18,
    tropicalOverlapSourceJExponent8Row18, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
