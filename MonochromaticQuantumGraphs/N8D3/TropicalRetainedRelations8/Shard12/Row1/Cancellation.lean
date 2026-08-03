import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 61. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row61 :
    tropicalOverlapRelation8Row61 =
      tropicalOverlapSourceCombination8Row61 := by
  simp [tropicalOverlapRelation8Row61,
    tropicalOverlapSourceCombination8Row61,
    tropicalOverlapProvenance8Row61,
    tropicalOverlapSourceIExponent8Row61,
    tropicalOverlapSourceJExponent8Row61, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
