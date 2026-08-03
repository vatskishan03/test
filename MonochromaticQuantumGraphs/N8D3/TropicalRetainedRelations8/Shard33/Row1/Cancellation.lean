import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 166. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row166 :
    tropicalOverlapRelation8Row166 =
      tropicalOverlapSourceCombination8Row166 := by
  simp [tropicalOverlapRelation8Row166,
    tropicalOverlapSourceCombination8Row166,
    tropicalOverlapProvenance8Row166,
    tropicalOverlapSourceIExponent8Row166,
    tropicalOverlapSourceJExponent8Row166, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
