import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 137. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row137 :
    tropicalOverlapRelation8Row137 =
      tropicalOverlapSourceCombination8Row137 := by
  simp [tropicalOverlapRelation8Row137,
    tropicalOverlapSourceCombination8Row137,
    tropicalOverlapProvenance8Row137,
    tropicalOverlapSourceIExponent8Row137,
    tropicalOverlapSourceJExponent8Row137, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
