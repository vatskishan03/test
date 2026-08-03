import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 242. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row242 :
    tropicalOverlapRelation8Row242 =
      tropicalOverlapSourceCombination8Row242 := by
  simp [tropicalOverlapRelation8Row242,
    tropicalOverlapSourceCombination8Row242,
    tropicalOverlapProvenance8Row242,
    tropicalOverlapSourceIExponent8Row242,
    tropicalOverlapSourceJExponent8Row242, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
