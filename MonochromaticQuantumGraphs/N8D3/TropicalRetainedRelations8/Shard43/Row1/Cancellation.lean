import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 216. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row216 :
    tropicalOverlapRelation8Row216 =
      tropicalOverlapSourceCombination8Row216 := by
  simp [tropicalOverlapRelation8Row216,
    tropicalOverlapSourceCombination8Row216,
    tropicalOverlapProvenance8Row216,
    tropicalOverlapSourceIExponent8Row216,
    tropicalOverlapSourceJExponent8Row216, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
