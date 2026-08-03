import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 163. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row163 :
    tropicalOverlapRelation8Row163 =
      tropicalOverlapSourceCombination8Row163 := by
  simp [tropicalOverlapRelation8Row163,
    tropicalOverlapSourceCombination8Row163,
    tropicalOverlapProvenance8Row163,
    tropicalOverlapSourceIExponent8Row163,
    tropicalOverlapSourceJExponent8Row163, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
