import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 288. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row288 :
    tropicalOverlapRelation8Row288 =
      tropicalOverlapSourceCombination8Row288 := by
  simp [tropicalOverlapRelation8Row288,
    tropicalOverlapSourceCombination8Row288,
    tropicalOverlapProvenance8Row288,
    tropicalOverlapSourceIExponent8Row288,
    tropicalOverlapSourceJExponent8Row288, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
