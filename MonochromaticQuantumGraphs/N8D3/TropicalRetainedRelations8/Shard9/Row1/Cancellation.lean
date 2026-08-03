import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 46. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row46 :
    tropicalOverlapRelation8Row46 =
      tropicalOverlapSourceCombination8Row46 := by
  simp [tropicalOverlapRelation8Row46,
    tropicalOverlapSourceCombination8Row46,
    tropicalOverlapProvenance8Row46,
    tropicalOverlapSourceIExponent8Row46,
    tropicalOverlapSourceJExponent8Row46, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
