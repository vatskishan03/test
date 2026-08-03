import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 143. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row143 :
    tropicalOverlapRelation8Row143 =
      tropicalOverlapSourceCombination8Row143 := by
  simp [tropicalOverlapRelation8Row143,
    tropicalOverlapSourceCombination8Row143,
    tropicalOverlapProvenance8Row143,
    tropicalOverlapSourceIExponent8Row143,
    tropicalOverlapSourceJExponent8Row143, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
