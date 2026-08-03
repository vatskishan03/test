import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 40. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row40 :
    tropicalOverlapRelation8Row40 =
      tropicalOverlapSourceCombination8Row40 := by
  simp [tropicalOverlapRelation8Row40,
    tropicalOverlapSourceCombination8Row40,
    tropicalOverlapProvenance8Row40,
    tropicalOverlapSourceIExponent8Row40,
    tropicalOverlapSourceJExponent8Row40, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
