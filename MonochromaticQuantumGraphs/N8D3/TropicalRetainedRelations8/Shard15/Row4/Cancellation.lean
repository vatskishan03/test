import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row79 :
    tropicalOverlapRelation8Row79 =
      tropicalOverlapSourceCombination8Row79 := by
  simp [tropicalOverlapRelation8Row79,
    tropicalOverlapSourceCombination8Row79,
    tropicalOverlapProvenance8Row79,
    tropicalOverlapSourceIExponent8Row79,
    tropicalOverlapSourceJExponent8Row79, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
