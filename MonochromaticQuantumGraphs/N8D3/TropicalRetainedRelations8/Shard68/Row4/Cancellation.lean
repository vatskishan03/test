import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 344. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row344 :
    tropicalOverlapRelation8Row344 =
      tropicalOverlapSourceCombination8Row344 := by
  simp [tropicalOverlapRelation8Row344,
    tropicalOverlapSourceCombination8Row344,
    tropicalOverlapProvenance8Row344,
    tropicalOverlapSourceIExponent8Row344,
    tropicalOverlapSourceJExponent8Row344, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
