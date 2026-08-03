import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 190. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row190 :
    tropicalOverlapRelation8Row190 =
      tropicalOverlapSourceCombination8Row190 := by
  simp [tropicalOverlapRelation8Row190,
    tropicalOverlapSourceCombination8Row190,
    tropicalOverlapProvenance8Row190,
    tropicalOverlapSourceIExponent8Row190,
    tropicalOverlapSourceJExponent8Row190, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
