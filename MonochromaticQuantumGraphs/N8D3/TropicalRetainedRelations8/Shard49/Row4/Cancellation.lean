import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row249 :
    tropicalOverlapRelation8Row249 =
      tropicalOverlapSourceCombination8Row249 := by
  simp [tropicalOverlapRelation8Row249,
    tropicalOverlapSourceCombination8Row249,
    tropicalOverlapProvenance8Row249,
    tropicalOverlapSourceIExponent8Row249,
    tropicalOverlapSourceJExponent8Row249, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
