import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 151. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row151 :
    tropicalOverlapRelation8Row151 =
      tropicalOverlapSourceCombination8Row151 := by
  simp [tropicalOverlapRelation8Row151,
    tropicalOverlapSourceCombination8Row151,
    tropicalOverlapProvenance8Row151,
    tropicalOverlapSourceIExponent8Row151,
    tropicalOverlapSourceJExponent8Row151, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
