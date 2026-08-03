import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 340. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row340 :
    tropicalOverlapRelation8Row340 =
      tropicalOverlapSourceCombination8Row340 := by
  simp [tropicalOverlapRelation8Row340,
    tropicalOverlapSourceCombination8Row340,
    tropicalOverlapProvenance8Row340,
    tropicalOverlapSourceIExponent8Row340,
    tropicalOverlapSourceJExponent8Row340, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
