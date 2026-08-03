import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 227. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row227 :
    tropicalOverlapRelation8Row227 =
      tropicalOverlapSourceCombination8Row227 := by
  simp [tropicalOverlapRelation8Row227,
    tropicalOverlapSourceCombination8Row227,
    tropicalOverlapProvenance8Row227,
    tropicalOverlapSourceIExponent8Row227,
    tropicalOverlapSourceJExponent8Row227, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
