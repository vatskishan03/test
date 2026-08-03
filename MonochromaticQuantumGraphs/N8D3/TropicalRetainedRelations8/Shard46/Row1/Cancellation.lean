import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 231. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row231 :
    tropicalOverlapRelation8Row231 =
      tropicalOverlapSourceCombination8Row231 := by
  simp [tropicalOverlapRelation8Row231,
    tropicalOverlapSourceCombination8Row231,
    tropicalOverlapProvenance8Row231,
    tropicalOverlapSourceIExponent8Row231,
    tropicalOverlapSourceJExponent8Row231, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
