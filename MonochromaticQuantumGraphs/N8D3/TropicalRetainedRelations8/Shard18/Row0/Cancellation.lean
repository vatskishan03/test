import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 90. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row90 :
    tropicalOverlapRelation8Row90 =
      tropicalOverlapSourceCombination8Row90 := by
  simp [tropicalOverlapRelation8Row90,
    tropicalOverlapSourceCombination8Row90,
    tropicalOverlapProvenance8Row90,
    tropicalOverlapSourceIExponent8Row90,
    tropicalOverlapSourceJExponent8Row90, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
