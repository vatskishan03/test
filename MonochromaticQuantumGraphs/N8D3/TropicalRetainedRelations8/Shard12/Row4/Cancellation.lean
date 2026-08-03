import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row64 :
    tropicalOverlapRelation8Row64 =
      tropicalOverlapSourceCombination8Row64 := by
  simp [tropicalOverlapRelation8Row64,
    tropicalOverlapSourceCombination8Row64,
    tropicalOverlapProvenance8Row64,
    tropicalOverlapSourceIExponent8Row64,
    tropicalOverlapSourceJExponent8Row64, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
