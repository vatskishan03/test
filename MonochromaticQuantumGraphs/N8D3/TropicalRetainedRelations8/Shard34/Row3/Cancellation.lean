import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 173. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row173 :
    tropicalOverlapRelation8Row173 =
      tropicalOverlapSourceCombination8Row173 := by
  simp [tropicalOverlapRelation8Row173,
    tropicalOverlapSourceCombination8Row173,
    tropicalOverlapProvenance8Row173,
    tropicalOverlapSourceIExponent8Row173,
    tropicalOverlapSourceJExponent8Row173, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
