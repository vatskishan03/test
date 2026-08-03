import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 175. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row175 :
    tropicalOverlapRelation8Row175 =
      tropicalOverlapSourceCombination8Row175 := by
  simp [tropicalOverlapRelation8Row175,
    tropicalOverlapSourceCombination8Row175,
    tropicalOverlapProvenance8Row175,
    tropicalOverlapSourceIExponent8Row175,
    tropicalOverlapSourceJExponent8Row175, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
