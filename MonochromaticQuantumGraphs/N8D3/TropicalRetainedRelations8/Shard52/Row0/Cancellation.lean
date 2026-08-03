import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 260. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row260 :
    tropicalOverlapRelation8Row260 =
      tropicalOverlapSourceCombination8Row260 := by
  simp [tropicalOverlapRelation8Row260,
    tropicalOverlapSourceCombination8Row260,
    tropicalOverlapProvenance8Row260,
    tropicalOverlapSourceIExponent8Row260,
    tropicalOverlapSourceJExponent8Row260, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
