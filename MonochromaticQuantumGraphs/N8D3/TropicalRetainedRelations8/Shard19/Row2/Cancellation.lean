import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 97. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row97 :
    tropicalOverlapRelation8Row97 =
      tropicalOverlapSourceCombination8Row97 := by
  simp [tropicalOverlapRelation8Row97,
    tropicalOverlapSourceCombination8Row97,
    tropicalOverlapProvenance8Row97,
    tropicalOverlapSourceIExponent8Row97,
    tropicalOverlapSourceJExponent8Row97, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
