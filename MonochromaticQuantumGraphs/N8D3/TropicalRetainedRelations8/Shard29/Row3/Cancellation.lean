import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 148. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row148 :
    tropicalOverlapRelation8Row148 =
      tropicalOverlapSourceCombination8Row148 := by
  simp [tropicalOverlapRelation8Row148,
    tropicalOverlapSourceCombination8Row148,
    tropicalOverlapProvenance8Row148,
    tropicalOverlapSourceIExponent8Row148,
    tropicalOverlapSourceJExponent8Row148, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
