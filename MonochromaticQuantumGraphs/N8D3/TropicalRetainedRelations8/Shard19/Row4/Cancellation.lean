import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 99. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row99 :
    tropicalOverlapRelation8Row99 =
      tropicalOverlapSourceCombination8Row99 := by
  simp [tropicalOverlapRelation8Row99,
    tropicalOverlapSourceCombination8Row99,
    tropicalOverlapProvenance8Row99,
    tropicalOverlapSourceIExponent8Row99,
    tropicalOverlapSourceJExponent8Row99, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
