import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row159 :
    tropicalOverlapRelation8Row159 =
      tropicalOverlapSourceCombination8Row159 := by
  simp [tropicalOverlapRelation8Row159,
    tropicalOverlapSourceCombination8Row159,
    tropicalOverlapProvenance8Row159,
    tropicalOverlapSourceIExponent8Row159,
    tropicalOverlapSourceJExponent8Row159, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
