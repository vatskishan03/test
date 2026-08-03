import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 262. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row262 :
    tropicalOverlapRelation8Row262 =
      tropicalOverlapSourceCombination8Row262 := by
  simp [tropicalOverlapRelation8Row262,
    tropicalOverlapSourceCombination8Row262,
    tropicalOverlapProvenance8Row262,
    tropicalOverlapSourceIExponent8Row262,
    tropicalOverlapSourceJExponent8Row262, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
