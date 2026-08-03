import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row139 :
    tropicalOverlapRelation8Row139 =
      tropicalOverlapSourceCombination8Row139 := by
  simp [tropicalOverlapRelation8Row139,
    tropicalOverlapSourceCombination8Row139,
    tropicalOverlapProvenance8Row139,
    tropicalOverlapSourceIExponent8Row139,
    tropicalOverlapSourceJExponent8Row139, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
