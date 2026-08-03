import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 350. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row350 :
    tropicalOverlapRelation8Row350 =
      tropicalOverlapSourceCombination8Row350 := by
  simp [tropicalOverlapRelation8Row350,
    tropicalOverlapSourceCombination8Row350,
    tropicalOverlapProvenance8Row350,
    tropicalOverlapSourceIExponent8Row350,
    tropicalOverlapSourceJExponent8Row350, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
