import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row189 :
    tropicalOverlapRelation8Row189 =
      tropicalOverlapSourceCombination8Row189 := by
  simp [tropicalOverlapRelation8Row189,
    tropicalOverlapSourceCombination8Row189,
    tropicalOverlapProvenance8Row189,
    tropicalOverlapSourceIExponent8Row189,
    tropicalOverlapSourceJExponent8Row189, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
