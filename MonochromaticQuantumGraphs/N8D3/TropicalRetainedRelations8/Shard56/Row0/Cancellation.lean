import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 280. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row280 :
    tropicalOverlapRelation8Row280 =
      tropicalOverlapSourceCombination8Row280 := by
  simp [tropicalOverlapRelation8Row280,
    tropicalOverlapSourceCombination8Row280,
    tropicalOverlapProvenance8Row280,
    tropicalOverlapSourceIExponent8Row280,
    tropicalOverlapSourceJExponent8Row280, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
