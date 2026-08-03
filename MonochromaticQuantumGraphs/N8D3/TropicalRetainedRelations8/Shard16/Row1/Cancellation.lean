import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 81. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row81 :
    tropicalOverlapRelation8Row81 =
      tropicalOverlapSourceCombination8Row81 := by
  simp [tropicalOverlapRelation8Row81,
    tropicalOverlapSourceCombination8Row81,
    tropicalOverlapProvenance8Row81,
    tropicalOverlapSourceIExponent8Row81,
    tropicalOverlapSourceJExponent8Row81, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
