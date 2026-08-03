import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 256. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row256 :
    tropicalOverlapRelation8Row256 =
      tropicalOverlapSourceCombination8Row256 := by
  simp [tropicalOverlapRelation8Row256,
    tropicalOverlapSourceCombination8Row256,
    tropicalOverlapProvenance8Row256,
    tropicalOverlapSourceIExponent8Row256,
    tropicalOverlapSourceJExponent8Row256, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
